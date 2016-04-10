// Pixy SPI with SS
// 1. Data is sent most significant bit first
// 2. SPI SCK is low when idle (SPO = 0)
// 3. Data bits are latched on the rising edge of SPI SCK (SPH = 0)
// 4. Slave select is active low
//
// Code adapted from http://cmucam.org/projects/cmucam5/wiki/Porting_Guide

#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include "drivers/mss_spi/mss_spi.h"


#define PIXY_ARRAYSIZE              100
#define PIXY_START_WORD             0xaa55
#define PIXY_START_WORD_CC          0xaa56
#define PIXY_START_WORDX            0x55aa
#define PIXY_SERVO_SYNC             0xff
#define PIXY_CAM_BRIGHTNESS_SYNC    0xfe
#define PIXY_LED_SYNC               0xfd
#define PIXY_OUTBUF_SIZE            64

#define PIXY_SYNC_BYTE              0x5a
#define PIXY_SYNC_BYTE_DATA         0x5b

// data types
typedef enum {
    NORMAL_BLOCK,
    CC_BLOCK  // color code block
} PixyBlockType;

typedef struct {
    uint16_t signature;
    uint16_t x;
    uint16_t y;
    uint16_t width;
    uint16_t height;
    uint16_t angle;  // angle is only available for color coded blocks
} PixyBlock;

extern PixyBlockType g_blockType;
extern PixyBlock *g_blocks;

/*
 * Initialize the blocks data buffer,
 * and the MSS_SPI master
 */
void Pixy_init();

/*
 * ?
 */
int Pixy_get_start(void);

/*
 * Get up to maxBlocks from Pixy
 */
uint16_t Pixy_get_blocks(uint16_t max_blocks);


/*
 * Set the camera brightness
 */
int Pixy_set_brightness(uint8_t brightness);

/*
 * Set the RGB value of the LED
 */
int Pixy_set_LED(uint8_t r, uint8_t g, uint8_t b);
