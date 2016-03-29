#ifndef STATS_DISPLAY_H
#define STATS_DISPLAY_H

#include <inttypes.h>
#include "LCD.h"
//#include "drivers/n64_driver.h"

#define	HI_BYTE_16
#define LO_BYTE_16

//POSITIONING MACROS//////////////////////////
#define	TARGET_BOX_X1 		99				//
#define TARGET_BOX_Y1		0				//
#define TARGET_BOX_X2		159				//
#define	TARGET_BOX_Y2		49				//
											//
#define N64_DBG_BOX_X1		0				//
#define N64_DBG_BOX_Y1		100				//
#define N64_DBG_BOX_X2		96				//
#define N64_DBG_BOX_Y2		0				//
											//
#define SHOTS_POS_X			16				//
#define SHOTS_POS_Y			16				//
											//
#define MODE_POS_X			16				//
#define MODE_POS_Y			80				//
											//
#define PRESSURE_POS_X		0				//
#define PRESSURE_POS_Y		0				//
											//
#define SET 				1 				//
#define UNSET				0				//
//////////////////////////////////////////////

typedef struct{
	uint8_t start;
	uint8_t end;
} line_t;

typedef struct {
	uint8_t x;
	uint8_t y;
	uint8_t r;
} circle_t;

typedef struct{
	uint8_t x1;
	uint8_t y1;
	uint8_t x2;
	uint8_t y2;
} box_t;

typedef struct{
	uint8_t x;
	uint8_t y;
} pixel_t;

typedef struct {
	/*line_t* 	lines;
	circle_t* 	circles;
	box_t* 		boxes;
	pixel_t* 	set_pixels;

	uint8_t 	num_lines;
	uint8_t 	num_circles;
	uint8_t 	num_boxes; 
	uint8_t 	num_set_pixels; */

	//Pointer to the shape representing the position of the laser pointer
	circle_t*	target_pos;
	circle_t*	turret_pos;

} lcd_screen_state_t;



//static void updateDisplay();

void initDisplay();

//void 

void testBarebones();

#endif