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

/*
 * Initialize the blocks data buffer,
 * and the MSS_SPI master
 */
void init();

/*
 *
 */
int getStart(void);

/*
 *
 */
uint16_t getBlocks(uint16_t maxBlocks);

/*
 *
 */
int setServos(uint16_t s0, uint16_t s1);

/*
 *
 */
int setBrightness(uint8_t brightness);

/*
 *
 */
int setLED(uint8_t r, uint8_t g, uint8_t b);