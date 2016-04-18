#include <stdlib.h>
#include <stdio.h>

#include "stats_display.h"
#include "LCD.h"
#include "timer_t.h"
#include "debug_macros.h"
#include "Pixy_SPI.h"

void disp_init(){
	LCD_init();
	LCD_clearScreen();
	LCD_toggleReverseMode();
	//LCD_setPixel(10, 10, 1);
	//Draws targeting box
	LCD_drawBox(TARGET_BOX_X1, TARGET_BOX_Y1, TARGET_BOX_X2, TARGET_BOX_Y2, SET);
	//Draws N64 debug box
	//LCD_drawBox(N64_DBG_BOX_X1, N64_DBG_BOX_Y1, N64_DBG_BOX_X2, N64_DBG_BOX_Y2, SET);
	//Draw pos data
	LCD_setPos(TARGET_HORZ_POS_X, TARGET_HORZ_POS_Y);
	LCD_printStr(TARGET_HORZ_STR);
	LCD_setPos(TARGET_VERT_POS_X, TARGET_VERT_POS_Y);
	LCD_printStr(TARGET_VERT_STR);
	//Draw distance
	LCD_setPos(DIST_POS_X, DIST_POS_Y);
	LCD_printStr(DIST_STR);
	//Draw shots left
	LCD_setPos(SHOTS_LEFT_POS_X, SHOTS_LEFT_POS_Y);
	LCD_printStr(SHOTS_STR);
	//Draw mode indicator
	LCD_setPos(MODE_POS_X, MODE_POS_Y);
	LCD_printStr(MODE_STR);


	g_disp_update_lock = 0;
}

static upd_disp_arg_t u_arg;
static circle_t targ;
static circle_t lasttarg;
static upd_targ_arg_t t_arg;
static upd_dist_arg_t d_arg;
static upd_shots_arg_t s_arg;
static upd_mode_arg_t m_arg;

void disp_update(void *u_arg_v){
	upd_disp_arg_t *u_arg_global = (upd_disp_arg_t*) u_arg_v;
	if(g_disp_update_lock==1){//This will probably drop some updates, and idgaf
		//free(u_arg_global->lcd_state);
		//if(u_arg_global->last_state)
		//	free(u_arg_global->last_state);
		//printf("Update in progress!\r\n");
		DBG("upd in progress");
	//	free(u_arg_v);
		return; //add frees
	} if (u_arg_v == NULL || u_arg_global->lcd_state == NULL){
		DBG("args are NULL");
		return;
	}
	g_disp_update_lock = 1;

	//DBG("beginning update");
	//This is a pointer to a global in main: copy state to prevent
	//changes in the middle of the update pipeline
	u_arg = *u_arg_global;

	lcd_screen_state_t* lcd_state = u_arg.lcd_state;
	lcd_screen_state_t* last_state = u_arg.last_state;


	targ = *(lcd_state->target_pos);
	uint16_t dist 		= lcd_state->distance;
	uint8_t chamber_status = lcd_state->chamber_status;
	uint8_t mode 		= lcd_state->target_mode;
	//DBG("dist:%u, shots:%u, mode:%u", dist, chamber_status, mode);
	//Guarantees a refresh without rechecking
	uint16_t lastdist;
	uint8_t lastchamber;
	uint8_t lastmode;

	uint8_t update_target=0;
	if(last_state){
		//lasttarg = *(last_state->target_pos);
		lastdist= last_state->distance;
 		lastchamber = last_state->chamber_status;
 		lastmode= last_state->target_mode;
 		update_target = (targ.x != lasttarg.x || targ.y != lasttarg.y);
	} else { //force update
		//lasttarg

		lastdist = dist+1;
		lastchamber = (chamber_status ? 0 : 1);
		lastmode = mode+1;
		update_target=0;
	}

	//Don't need a timer for our first UART xfer
	//Need to delay subsequent requests to LCD
	//May need to change this depending on how often this function is being called
	uint8_t upd_dur = 0;
	if(update_target){
		t_arg.lasttarg = &lasttarg;
		//add_timer_single((handler_t) disp_erase_old_targ_circle, &t_arg, to_ticks(upd_dur));
		disp_erase_old_targ_circle(&t_arg);
		upd_dur += TRG_ERASE_DELAY_MS;

		t_arg.targ = &targ;
		add_timer_single((handler_t) disp_write_targ_circle, &t_arg, to_ticks(upd_dur));
		upd_dur += TRG_WRITE_DELAY_MS;
		add_timer_single((handler_t) disp_write_targ_vals, &t_arg, to_ticks(upd_dur));
		upd_dur += TRG_VAL_DELAY_MS;
		lasttarg = targ;
	} if(chamber_status != lastchamber){
		DBG("adding shots update to fire in %u ms, ", upd_dur);
		s_arg.chamber_status = chamber_status;
		add_timer_single((handler_t)disp_write_shots, &s_arg, to_ticks(upd_dur));
		upd_dur += SHOTS_DELAY_MS;
	} if(mode != lastmode){
		DBG("adding mode update to fire in %u ms", upd_dur);
		m_arg.mode = mode;
		add_timer_single((handler_t)disp_write_mode, &m_arg, to_ticks(upd_dur));
		upd_dur += MODE_DELAY_MS;
	} if(dist != lastdist){
		DBG("adding distance update to fire in %u ms", upd_dur);
		d_arg.dist = dist;
		add_timer_single((handler_t)disp_write_dist, &d_arg, to_ticks(upd_dur));
		upd_dur += DIST_DELAY_MS;
	}
	//DBG("adding cleanup to fire in %u ms", upd_dur);
	add_timer_single((handler_t)disp_upd_finish, &u_arg, to_ticks(upd_dur));
	start_hardware_timer();
	//Refrain from updating n64 debug box b/c of latency issues
	//disp_write_N64(ctrlr_state);
}


//This can be made more efficient:
//	use sprintf to print a number of three digits; this eliminates the need
//	for clearing the previous count
//void disp_write_target(void *t_v){
	/*upd_targ_arg_t* t = (upd_targ_arg_t*) t_v;

	circle_t* targ = t->targ;
	circle_t* lasttarg = t->lasttarg;
	uint8_t tx = targ->x;
	uint8_t ty = targ->y;
	uint8_t lx;
	uint8_t ly;

	char horz[4];
	char vert[4];

	sprintf(horz, "%03d", tx);
	sprintf(vert, "%03d", ty);*/
	//This just clears the whole screen, inefficient
	//LCD_eraseBlock(TARGET_UL_POS_X, TARGET_UL_POS_Y, TARGET_LR_POS_X, TARGET_LR_POS_Y); //Clear X:aaaY:bbb
	//LCD_eraseBlock(TARGET_BOX_X1+1, TARGET_BOX_Y1+1, TARGET_BOX_X2-1, TARGET_BOX_Y2-1); //Clear entire target area
	//erase last circle only if the second arg isn't null
	/*if(lasttarg != NULL){
		lx = lasttarg->x;
		ly = lasttarg->y;
		LCD_drawCircle(lx + TARGET_BOX_X1 + TARGET_RAD +1 , ly + TARGET_BOX_Y1 + TARGET_RAD +1, TARGET_RAD, LCD_UNSET); //Clear the old circle
	}
	//X:
	LCD_setPos(TARGET_HORZ_POS_X + TARGET_HORZ_STR_SZ*CHAR_WIDTH, TARGET_HORZ_POS_Y);
	//LCD_printStr(TARGET_HORZ_STR);
	LCD_printStr(horz);
	//Y:
	LCD_setPos(TARGET_VERT_POS_X + TARGET_VERT_STR_SZ*CHAR_WIDTH, TARGET_VERT_POS_Y);
	//LCD_printStr(TARGET_VERT_STR);
	LCD_printStr(vert);

	//Draw the new target
	//add radius + 1 to prevent clipping with edges of target box
	LCD_drawCircle(tx + TARGET_BOX_X1 +TARGET_RAD +1 ,ty + TARGET_BOX_Y1 + TARGET_RAD +1, TARGET_RAD, LCD_SET);
	DBG("drawing target (%u,%u)", tx, ty);*/

//}

void disp_erase_old_targ_circle(void *t_v){

	upd_targ_arg_t* t = (upd_targ_arg_t*) t_v;
	circle_t* lasttarg = t->lasttarg;

	uint8_t lx;
	uint8_t ly;

	if(lasttarg != NULL){
		lx = lasttarg->x;
		ly = lasttarg->y;
		printf("erasing old target circle (%d,%d)\r\n", lx, ly);
		LCD_drawCircle(lx + TARGET_BOX_X1 + TARGET_RAD +1 , TARGET_BOX_Y2 + TARGET_RAD +1 - ly, TARGET_RAD, LCD_UNSET); //Clear the old circle
	}
}

void disp_write_targ_circle(void *t_v){
	printf("writing target circle\r\n");
	upd_targ_arg_t* t = (upd_targ_arg_t*) t_v;

	circle_t* targ = t->targ;
	uint8_t tx = targ->x;
	uint8_t ty = targ->y;
	printf("writing new target circle(%d,%d)\r\n", tx, ty);
	LCD_drawCircle(tx + TARGET_BOX_X1 +TARGET_RAD +1 , TARGET_BOX_Y2 + TARGET_RAD +1 - ty, TARGET_RAD, LCD_SET);
}

void disp_write_targ_vals(void *t_v){
	DBG("writing target values\r\n");
	upd_targ_arg_t* t = (upd_targ_arg_t*) t_v;

	circle_t* targ = t->targ;
	circle_t* lasttarg = t->lasttarg;
	uint8_t tx = targ->x;
	uint8_t ty = targ->y;

	char horz[4];
	char vert[4];

	sprintf(horz, "%03d", tx);
	sprintf(vert, "%03d", ty);

	LCD_setPos(TARGET_HORZ_POS_X + TARGET_HORZ_STR_SZ*CHAR_WIDTH, TARGET_HORZ_POS_Y);
	//LCD_printStr(TARGET_HORZ_STR);
	LCD_printStr(horz);
	//Y:
	LCD_setPos(TARGET_VERT_POS_X + TARGET_VERT_STR_SZ*CHAR_WIDTH, TARGET_VERT_POS_Y);
	//LCD_printStr(TARGET_VERT_STR);
	LCD_printStr(vert);

}

//This can be made more efficient:
//	use sprintf to print a number of three digits; this eliminates the need
//	for clearing the previous count
void disp_write_shots(void *s_v){
	DBG("writing chamber status");
	upd_shots_arg_t* s = (upd_shots_arg_t*) s_v;
	uint8_t status = s->chamber_status;
	//LCD_setPos(SHOTS_LEFT_POS_X, SHOTS_LEFT_POS_Y);
	//Write on the next line
	LCD_setPos(SHOTS_LEFT_POS_X + CHAR_WIDTH, SHOTS_LEFT_POS_Y - CHAR_HEIGHT);
	if(status == CHAMBER_LOADED){
		LCD_printStr(SHOTS_LOADED_STR);
		//DBG("writing chamber status as %s", SHOTS_LOADED_STR);
	}
	else /*CHAMBER_EMPTY*/ {
		LCD_printStr(SHOTS_EMPTY_STR);
		//DBG("writing chamber status as %s", SHOTS_EMPTY_STR);
	}
}


//This can be made more efficient:
//	use sprintf to print a number of three digits; this eliminates the need
//	for clearing the previous count
//Argument is assumed to have already been scaled
void disp_write_dist(void *d_v){
	DBG("writing distance");
	upd_dist_arg_t* d = (upd_dist_arg_t*) d_v;

	uint16_t distance = d->dist;
	char num[4];
	//LCD_setPos(DIST_POS_X, DIST_POS_Y);
	LCD_setPos(DIST_POS_X + CHAR_WIDTH, DIST_POS_Y - CHAR_HEIGHT);
	sprintf(num, "%05d", distance);
	LCD_printStr(num);
	//DBG("writing distance %u", distance);
}

void disp_write_mode(void *m_v){
	DBG("writing mode");
	upd_mode_arg_t* m = (upd_mode_arg_t*) m_v;

	//redundant, for clarity
	uint8_t mode = m->mode;
	if(mode == AUTO_MODE){
		LCD_setPos(MODE_POS_X + CHAR_WIDTH, MODE_POS_Y - CHAR_HEIGHT);
		LCD_printStr(AUTO_STR);
	} else {
		LCD_setPos(MODE_POS_X + CHAR_WIDTH, MODE_POS_Y - CHAR_HEIGHT);
		LCD_printStr(MANUAL_STR);
	}
	//DBG("writing mode %u", mode);
}

//Clear the way for subsequent calls to update
//This guy should free the initial argument
void disp_upd_finish(void* u_arg_v){
	g_disp_update_lock = 0;
	//DBG("cleaning up update");
	//upd_disp_arg_t* u_arg = (upd_dist_arg_t*) u_arg_v;

}

/*
* pixy_x will be between 0 and 319
*/
uint8_t disp_scale_x(uint16_t pixy_x){
	uint8_t TARGET_X_MAX = (TARGET_BOX_X2 - TARGET_RAD - 1) - (TARGET_BOX_X1 + TARGET_RAD + 1);
	float pixy_to_lcd = (float) TARGET_X_MAX/ (float) PIXY_X_MAX;
	float scaled_value = (float) pixy_x * pixy_to_lcd;

	//DBG("scaled x val: %d, original: %d", (uint8_t) scaled_value, pixy_x);
	return (uint8_t) scaled_value;
}

/*
 * pixy_t will be between 0 and 199
 */
uint8_t disp_scale_y(uint16_t pixy_y){
	uint8_t TARGET_Y_MAX = (TARGET_BOX_Y2 - TARGET_RAD - 1) - (TARGET_BOX_Y1 + TARGET_RAD + 1);
	float pixy_to_lcd = (float) TARGET_Y_MAX/ (float) PIXY_Y_MAX;
	float scaled_value = (float) pixy_y * pixy_to_lcd;

	//DBG("scaled y val: %d, original: %d", (uint8_t) scaled_value, pixy_y);
	return (uint8_t) scaled_value;
}

void testBarebones(){

}
