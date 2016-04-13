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

// Pixy communications over SPI
#define PIXY_ARRAYSIZE 100
#define PIXY_START_WORD 0xaa55
#define PIXY_START_WORD_CC 0xaa56
#define PIXY_START_WORDX 0x55aa
#define PIXY_SERVO_SYNC 0xff
#define PIXY_CAM_BRIGHTNESS_SYNC 0xfe
#define PIXY_LED_SYNC 0xfd
#define PIXY_OUTBUF_SIZE 64

#define PIXY_SYNC_BYTE 0x5a
#define PIXY_SYNC_BYTE_DATA 0x5b

// center location of the pixy's field of view
#define PIXY_X_CENTER 200
#define PIXY_Y_CENTER 160

// data types
typedef enum {
    NORMAL_BLOCK,
    CC_BLOCK  // color code block
} block_type_t;

typedef struct {
    uint16_t signature;
    uint16_t x;
    uint16_t y;
    uint16_t width;
    uint16_t height;
    uint16_t angle;  // angle is only available for color coded blocks
} pixy_block_t;

typedef struct {
    int16_t x;
    int16_t y;
} target_pos_t;

//extern block_type_t g_blockType;
//extern pixy_block_t *g_blocks;

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

/*
 * Gets a single block of data from the pixy,
 * which will contain the largest signature in the field of view
 */
pixy_block_t* Pixy_get_single_block();

/*
 * Updates the positional coordinates of the provided target
 *
 * Returns -1 on failure, 0 success
 */
int Pixy_get_target_location(target_pos_t* target);

/*
 * Prints out the given block's values
 */
void pixy_print(pixy_block_t *b);

