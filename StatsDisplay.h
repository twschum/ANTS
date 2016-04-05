#ifndef STATS_DISPLAY_H
#define STATS_DISPLAY_H

#include <inttypes.h>
#include "LCD.h"
#include "n64_driver.h"

//POSITIONING MACROS//////////////////////////////
#define	TARGET_BOX_X1 		69					//
#define TARGET_BOX_Y1		37					//
#define TARGET_BOX_X2		159					//
#define	TARGET_BOX_Y2		127					//
												//
#define TARGET_HORZ_POS_X	78					//
#define TARGET_HORZ_POS_Y	31					//
												//
#define TARGET_VERT_POS_X	118					//
#define TARGET_VERT_POS_Y	31					//
												//
//These are here to clear the positioning 		//
//data from the screen on refresh				//
#define TARGET_UL_POS_X		78					//
#define TARGET_UL_POS_Y		31					//
#define TARGET_LR_POS_X		158					//
#define TARGET_LR_POS_Y		29					//				
												//
#define N64_DBG_BOX_X1		0					//
#define N64_DBG_BOX_Y1		0					//
#define N64_DBG_BOX_X2		100					//
#define N64_DBG_BOX_Y2		12					//
												//
#define SHOTS_LEFT_POS_X	10					//
#define SHOTS_LEFT_POS_Y	110					//
												//
#define MODE_POS_X			10					//
#define MODE_POS_Y			80					//
												//
#define PRESSURE_POS_X		0					//
#define PRESSURE_POS_Y		0					//
												//
#define SET 				1 					//
#define UNSET				0					//
												//
#define AUTO_MODE			1 					//
#define MANUAL_MODE 		0 					//
												//
#define MODE_STR 			"Mode:"				//
#define MODE_STR_SZ			6 					//
												//
#define AUTO_STR			"AUTO-TARGETING"	//
#define AUTO_STR_SZ 		15					//
												//
#define MANUAL_STR			"MANUAL TARGETING"	//
#define MANUAL_STR_SZ		17					//
												//
#define TARGET_HORZ_STR 	"X:"				//
#define TARGET_HORZ_STR_SZ	3 					//
												//
#define TARGET_VERT_STR		"Y:"				//
#define TARGET_VERT_STR_SZ	3 					//
												//
#define SHOTS_STR			"Shots:"			//
#define SHOTS_STR_SZ		7 					//
												//
#define CHAR_WIDTH			6 					//
#define CHAR_HEIGHT			8 					//	
												//
												//
//////////////////////////////////////////////////

typedef struct{
	uint8_t start_x;
	uint8_t start_y;
	uint8_t end_x;
	uint8_t end_y;
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

typedef pixel_t point_t;

typedef struct {
	//Pointer to the shape representing the position of the laser pointer
	circle_t*	target_pos;
	circle_t*	turret_pos;
	uint8_t 	shots_left;
	uint8_t		target_mode; 		
} lcd_screen_state_t;


void updateDisplay(lcd_screen_state_t* lcd_state, n64_state_t* ctrlr_state);

void initDisplay();

void writePos(unsigned int x, unsigned int y);

void writeShots(unsigned int shots);

void writeMode(char mode);

void writeN64State();

void testBarebones();

#endif
