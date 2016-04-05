#ifndef STATS_DISPLAY_H
#define STATS_DISPLAY_H

#include <inttypes.h>
#include "LCD.h"
//#include "drivers/n64_driver.h"

//POSITIONING MACROS//////////////////////////
#define	TARGET_BOX_X1 		69				//
#define TARGET_BOX_Y1		37				//
#define TARGET_BOX_X2		159				//
#define	TARGET_BOX_Y2		127				//
											//
#define TARGET_HORZ_X		78				//
#define TARGET_HORZ_Y		31				//
											//
#define TARGET_VERT_X		118				//
#define TARGET_VERT_Y		31				//
											//
//These are here to clear the positioning 	//
//data from the screen on refresh			//
#define TARGET_POS_UL_X		78				//
#define TARGET_POS_UL_Y		31				//
#define TARGET_POS_LR_X		158				//
#define TARGET_POS_LR_Y		29				//				
											//
#define N64_DBG_BOX_X1		0				//
#define N64_DBG_BOX_Y1		0				//
#define N64_DBG_BOX_X2		100				//
#define N64_DBG_BOX_Y2		12				//
											//
#define SHOTS_LEFT_POS_X	10				//
#define SHOTS_LEFT_POS_Y	110				//
											//
#define MODE_POS_X			10				//
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

void writePos(unsigned int x, unsigned int y);

void writeShots(unsigned int shots);

void writeMode(char mode);

void writeN64State();

void testBarebones();

#endif
