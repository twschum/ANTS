
#include "Pixy_SPI.h"

// communication routines (internal)
static uint16_t getWord(void);
static int sendByte(uint8_t *data, int len);

// variables for a little circular queue
static uint8_t g_outBuf[PIXY_OUTBUF_SIZE];
static uint8_t g_outLen = 0;
static uint8_t g_outWriteIndex = 0;
static uint8_t g_outReadIndex = 0;

static int g_skipStart = 0;
block_type_t g_blockType;
pixy_block_t *g_blocks;

///////////////////////////////////////////////////////////////////////////////
// SPI routines

// SPI sends as it receives so we need a getByte routine that
// takes an output data argument
uint8_t getByte(uint8_t out) {

    uint8_t in_rx;

    MSS_SPI_set_slave_select(&g_mss_spi1, MSS_SPI_SLAVE_0);
    in_rx = MSS_SPI_transfer_frame(&g_mss_spi1, out);
    MSS_SPI_clear_slave_select(&g_mss_spi1, MSS_SPI_SLAVE_0);

    return in_rx;
}

uint16_t getWord() {
    // ordering is big endian because Pixy is sending 16 bits through SPI
    uint16_t w;
    uint8_t c, cout = 0;

    if (g_outLen) {
        w = getByte(PIXY_SYNC_BYTE_DATA);
        cout = g_outBuf[g_outReadIndex++];
        g_outLen--;
        if (g_outReadIndex == PIXY_OUTBUF_SIZE)
            g_outReadIndex = 0;
    } else
        w = getByte(PIXY_SYNC_BYTE);  // send out sync byte

    w <<= 8;
    c = getByte(cout);  // send out data byte
    w |= c;

    return w;
}

int sendByte(uint8_t *data, int len) {
    int i;

    // check to see if we have enough space in our circular queue
    if (g_outLen + len > PIXY_OUTBUF_SIZE)
        return -1;

    g_outLen += len;
    for (i = 0; i < len; i++) {
        g_outBuf[g_outWriteIndex++] = data[i];
        if (g_outWriteIndex == PIXY_OUTBUF_SIZE)
            g_outWriteIndex = 0;
    }
    return len;
}
// end SPI routines
///////////////////////////////////////////////////////////////////////////////

void Pixy_init() {
    g_blocks = (pixy_block_t *)malloc(sizeof(pixy_block_t) * PIXY_ARRAYSIZE);

    const uint8_t frame_size = 8;  // Single byte for Pixy

    MSS_SPI_init(&g_mss_spi1);
    MSS_SPI_configure_master_mode(
          &g_mss_spi1, MSS_SPI_SLAVE_0,
          MSS_SPI_MODE0,         // based on Pix documentation
          MSS_SPI_PCLK_DIV_256,  // can be between 256 and 2
          frame_size);
}

int Pixy_get_start(void) {
    uint16_t w, lastw;

    lastw = 0xffff;

    while (1) {
        w = getWord();
        if (w == 0 && lastw == 0)
            return 0;  // no start code
        else if (w == PIXY_START_WORD && lastw == PIXY_START_WORD) {
            g_blockType = NORMAL_BLOCK;
            return 1;  // code found!
        } else if (w == PIXY_START_WORD_CC && lastw == PIXY_START_WORD) {
            g_blockType = CC_BLOCK;  // found color code block
            return 1;
        } else if (w == PIXY_START_WORDX)
            getByte(0);  // we're out of sync! (backwards)

        lastw = w;
    }
}

uint16_t Pixy_get_blocks(uint16_t max_blocks) {
    uint8_t i;
    uint16_t w, blockCount, checksum, sum;
    pixy_block_t *block;

    if (!g_skipStart) {
        if (Pixy_get_start() == 0)
            return 0;
    } else
        g_skipStart = 0;

    for (blockCount = 0;
         blockCount < max_blocks && blockCount < PIXY_ARRAYSIZE;) {
        checksum = getWord();
        if (checksum ==
            PIXY_START_WORD)  // we've reached the beginning of the next frame
        {
            g_skipStart = 1;
            g_blockType = NORMAL_BLOCK;
            return blockCount;
        } else if (checksum == PIXY_START_WORD_CC) {
            g_skipStart = 1;
            g_blockType = CC_BLOCK;
            return blockCount;
        } else if (checksum == 0)
            return blockCount;

        block = g_blocks + blockCount;

        for (i = 0, sum = 0; i < sizeof(pixy_block_t) / sizeof(uint16_t); i++) {
            if (g_blockType == NORMAL_BLOCK &&
                i >= 5)  // no angle for normal block
            {
                block->angle = 0;
                break;
            }
            w = getWord();
            sum += w;
            *((uint16_t *)block + i) = w;
        }

        // check checksum
        if (checksum == sum)
            blockCount++;
        else
            printf("checksum error!\n");

        w = getWord();
        if (w == PIXY_START_WORD)
            g_blockType = NORMAL_BLOCK;
        else if (w == PIXY_START_WORD_CC)
            g_blockType = CC_BLOCK;
        else
            return blockCount;
    }
}

int Pixy_set_brightness(uint8_t brightness) {
    uint8_t outBuf[3];

    outBuf[0] = 0x00;
    outBuf[1] = PIXY_CAM_BRIGHTNESS_SYNC;
    outBuf[2] = brightness;

    return sendByte(outBuf, 3);
}

int Pixy_set_LED(uint8_t r, uint8_t g, uint8_t b) {
    uint8_t outBuf[5];

    outBuf[0] = 0x00;
    outBuf[1] = PIXY_LED_SYNC;
    outBuf[2] = r;
    outBuf[3] = g;
    outBuf[4] = b;

    return sendByte(outBuf, 5);
}

pixy_block_t* Pixy_get_single_block() {
    if (Pixy_get_blocks(1) == 0)
        return NULL;
    return g_blocks;
}

int Pixy_get_target_location(target_pos_t* target) {

    // get a block and make sure g_blocks is valid
    if(Pixy_get_blocks(1) == 0) {
        return -1;
    }

    target->x = g_blocks[0].x;
    target->y = g_blocks[0].y;

    return 0;
}

void pixy_print(pixy_block_t *b) {

    printf("signature: %d\tx: %d\ty: %d\tw: %d\th: %d\tangle: %d\r\n",
            b->signature,
            b->x,
            b->y,
            b->width,
            b->height,
            b->angle
          );
}
