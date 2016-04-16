#ifndef STATS_DISPLAY_H
#define STATS_DISPLAY_H

#include <inttypes.h>
#include "LCD.h"
//#include "n64_driver.h"

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
#define TARGET_LR_POS_Y		23					//				
												//
#define N64_DBG_BOX_X1		0					//
#define N64_DBG_BOX_Y1		12					//
#define N64_DBG_BOX_X2		159					//
#define N64_DBG_BOX_Y2		0					//
												//
#define SHOTS_LEFT_POS_X	3					//
#define SHOTS_LEFT_POS_Y	110					//
												//
#define MODE_POS_X			3					//
#define MODE_POS_Y			80					//
												//
#define PRESSURE_POS_X		0					//
#define PRESSURE_POS_Y		0					//
												//	
#define DIST_POS_X			3					//
#define DIST_POS_Y			50					//
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
#define AUTO_STR			"AUTO  "			//
#define AUTO_STR_SZ 		7					//
												//
#define MANUAL_STR			"NORMAL"			//
#define MANUAL_STR_SZ		7					//
												//
#define DIST_STR			"Distance:"			//
#define DIST_STR_SZ			10					//
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
#define TARGET_RAD			3 					//
												//
//UPDATE DELAYS///////////////////////////////////
#define TRG_DELAY_MS 		5					//
#define DIST_DELAY_MS		5					//
#define SHOTS_DELAY_MS		5					//
#define MODE_DELAY_MS		5					//
//////////////////////////////////////////////////
//#define


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
	uint8_t 	distance;
	uint8_t 	shots;
	uint8_t		target_mode; 		
} lcd_screen_state_t;

typedef struct{
	lcd_screen_state_t *lcd_state;
	lcd_screen_state_t *last_state;//Forces an update if this is NULL
	//n64_state_t *ctrlr_state;
} upd_disp_arg_t;

//Wrapper structs for timeout handler arguments//
typedef struct{
	circle_t *targ;
	circle_t *lasttarg;
} upd_targ_arg_t;

typedef struct{
	uint8_t dist;
} upd_dist_arg_t;

typedef struct{
	uint8_t shots;
} upd_shots_arg_t;

typedef struct{
	uint8_t mode;
} upd_mode_arg_t;

void disp_init();

//NOTE////////////////////////////////////////////////////////////////////
//Latency with the LCD screen is a problem: output becomes garbled if UART
//writes are taking place before the screen has handled the last request.
//
//The bottleneck here isn't the baud rate, since the amount of data being
//sent via UART is relatively small. The bottleneck lies in the slow (~ms)
//update speed of the LCD itself compared to the UART xfer speed. Delays
//on the order of ms are necessary in between updating individual
//components of the display. 
//
//To accomplish this, we use something similar
//to the virtual timers designed in lab. A sequence of one-shot timers
//are used to interrupt and update after the LCD has updated. 
//////////////////////////////////////////////////////////////////////////

//Pass NULL to 2nd arg to force an update (e.g. on first write)
//This function will take on the order of tens of ms to complete
//

// unidirectional spin lock to enable sequential
// blocking while the display updates
uint8_t g_disp_update_lock;

void disp_update(void*);

//Clears X: Y: and graphic on screen, writes new values
void disp_write_target(void*);

void disp_write_dist(void*);

void disp_write_shots(void*);

void disp_write_mode(void*);

void disp_upd_finish(void*);

//void disp_write_N64();

void testBarebones();

#endif
