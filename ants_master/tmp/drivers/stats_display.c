#include <stdlib.h>

#include "StatsDisplay.h"
#include "LCD.h"
#include "timer_t.h"

void disp_init(){
	LCD_init();
	LCD_clearScreen();

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
	//Draw shots left
	LCD_setPos(SHOTS_LEFT_POS_X, SHOTS_LEFT_POS_Y);
	LCD_printStr(SHOTS_STR);
	//Draw mode indicator
	LCD_setPos(MODE_POS_X, MODE_POS_Y);
	LCD_printStr(MODE_STR);
}

void disp_update(lcd_screen_state_t* lcd_state, lcd_screen_state_t* last_state,
	n64_state_t* ctrlr_state){
	
	//circle_t *targ = lcd_state->target_pos;
	//circle_t *lasttarg = last_state->target_pos;
	circle_t *targ = malloc(sizeof(circle_t));
	circle_t *lasttarg = NULL;

	uint8_t dist 		= lcd_state->distance;
	uint8_t shots 		= lcd_state->shots;
	uint8_t mode 		= lcd_state->target_mode;

	//Guarantees a refresh without rechecking
	uint8_t lastdist;
	uint8_t lastshots;
	uint8_t lastmode;

	upd_targ_arg_t* t_arg = NULL;
	upd_dist_arg_t* d_arg = NULL;
	upd_shots_arg_t* s_arg = NULL;
	upd_mode_arg_t* m_arg = NULL;

	*targ = *(lcd_state->target_pos);
	
	if(last_state){
		lasttarg = malloc(sizeof(circle_t));
		*lasttarg = *(last_state->target_pos);

		lastdist= last_state->distance;
 		lastshots= last_state->shots;
 		lastmode= last_state->target_mode;
	} else {
		lastdist = dist+1;
		lastshots = shots+1;
		lastmode = mode+1;
	}

	//Don't need a timer for our first UART xfer
	//Need to delay subsequent requests to LCD
	//May need to change this depending on how often this function is being called
	t_arg = malloc(sizeof(upd_targ_arg_t));
	if(last_state){
		if(targ->x != lasttarg->x || targ->y != lasttarg->y){
			t_arg->targ = targ;
			t_arg->lasttarg = lasttarg;
			disp_write_target(t_arg);
		}
	}
	else{
		t_arg->targ = targ;
		t_arg->lasttarg = NULL;
		disp_write_target(t_arg);
	}
	//The following functions exit as soon as the handler is added to the 
	//list, and therefore this function may go out of scope before the LCD
	//refreshes its display
	//
	//Therefore, all arguments must be malloc'd to avoid problems w/stack
	//cleanup

	if(dist != lastdist){ //Add to timer queue
		d_arg = malloc(sizeof(upd_dist_arg_t));
		d_arg->dist = dist;
		add_timer_single((handler_t)disp_write_dist, d_arg, 5 );
		//disp_write_dist(d_arg);
	}
	if(shots != lastshots){
		s_arg = malloc(sizeof(upd_shots_arg_t));
		s_arg = shots;
		add_timer_single((handler_t)disp_write_shots, s_arg, 10 );
		//disp_write_shots(shots);
	}
	if(mode != lastmode){
		m_arg = malloc(sizeof(upd_mode_arg_t));
		m_arg = mode;
		add_timer_single((handler_t)disp_write_mode, m_arg, 15 );
		//disp_write_mode(mode);
	}
	//Refrain from updating n64 debug box b/c of latency issues
	//disp_write_N64(ctrlr_state);
}


//This can be made more efficient:
//	use sprintf to print a number of three digits; this eliminates the need
//	for clearing the previous count
void disp_write_target(void *t){
	upd_targ_arg_t* t = (upd_targ_arg_t*) t;

	circle_t* targ = t->targ;
	circle_t* lasttarg = t->lasttarg;
	uint8_t tx = targ->x;
	uint8_t ty = targ->y;
	uint8_t lx;
	uint8_t ly;

	char horz[4];
	char vert[4];

	sprintf(horz, "%03d", tx);
	sprintf(vert, "%03d", ty);
	//This just clears the whole screen, inefficient
	//LCD_eraseBlock(TARGET_UL_POS_X, TARGET_UL_POS_Y, TARGET_LR_POS_X, TARGET_LR_POS_Y); //Clear X:aaaY:bbb
	//LCD_eraseBlock(TARGET_BOX_X1+1, TARGET_BOX_Y1+1, TARGET_BOX_X2-1, TARGET_BOX_Y2-1); //Clear entire target area
	//erase last circle only if the second arg isn't null
	if(lasttarg != NULL){
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

	//Argument is assumed to have been malloc'd
	free(t);
	free(targ);
	free(lasttarg);
}

//This can be made more efficient:
//	use sprintf to print a number of three digits; this eliminates the need
//	for clearing the previous count
void disp_write_shots(void *s){
	upd_shots_arg_t* s = (upd_shots_arg_t*) s;

	uint8_t shots = s->shots;
	char num[3];
	//LCD_setPos(SHOTS_LEFT_POS_X, SHOTS_LEFT_POS_Y);
	LCD_setPos(SHOTS_LEFT_POS_X + SHOTS_STR_SZ * CHAR_WIDTH, SHOTS_LEFT_POS_Y);
	sprintf(num, "%02d", shots);
	LCD_printStr(num);

	//Argument is assumed to have been malloc'd
	free(s);
}


//This can be made more efficient:
//	use sprintf to print a number of three digits; this eliminates the need
//	for clearing the previous count
//Argument is assumed to have already been scaled
void disp_write_dist(void *d){
	upd_dist_targ_t* d = (upd_dist_targ_t*) d;

	uint8_t distance = d->dist;
	char num[4];
	//LCD_setPos(DIST_POS_X, DIST_POS_Y);
	LCD_setPos(DIST_POS_X, DIST_POS_Y);
	sprintf(num, "%03d", distance);
	LCD_printStr(num);

	//Argument is assumed to have been malloc'd
	free(d);
}

void disp_write_mode(void *m){
	upd_mode_arg_t* m = (upd_mode_arg_t*) m;

	//redundant, for clarity
	uint8_t mode = m->mode;
	if(newmode == AUTO_MODE){
		//New mode is auto, erase manual
		//LCD_eraseBlock(MODE_POS_X, MODE_POS_Y, MODE_POS_X + MANUAL_STR_SZ * CHAR_WIDTH, MODE_POS_Y - CHAR_HEIGHT);
		LCD_setPos(MODE_POS_X +(MODE_STR_SZ-1)*CHAR_WIDTH, MODE_POS_Y);
		LCD_printStr(AUTO_STR);
	} else {
		//New mode is manual, erase auto
		//LCD_eraseBlock(MODE_POS_X, MODE_POS_Y, MODE_POS_X + AUTO_STR_SZ * CHAR_WIDTH, MODE_POS_Y - CHAR_HEIGHT);
		LCD_setPos(MODE_POS_X +(MODE_STR_SZ-1)*CHAR_WIDTH, MODE_POS_Y);
		LCD_printStr(MANUAL_STR);
	}

	//Argument is assumed to have been malloc'd
	free(m);
}

//It'd be a pain in the ass to do selective clearing,
//so instead I opted to just blow away the debug box
//every time we decide to write to it
void disp_write_N64(n64_state_t* state){
	char n64dbg[27];
	uint8_t i = 0;
	const char *sp = " ";
	const char *sp2 = "  ";
	if(state->A){
		sprintf(n64dbg + i++, "A");
	} else sprintf(n64dbg + i++, sp);
    if(state->B){
    	sprintf(n64dbg + i++, "B");
    } else sprintf(n64dbg + i++, sp);
    if(state->Z){
    	sprintf(n64dbg + i++, "Z");
    } else sprintf(n64dbg + i++, sp);
    if(state->Start){
    	sprintf(n64dbg + i++, "S");
    } else sprintf(n64dbg + i++, sp);
    if(state->Up){
    	sprintf(n64dbg + i++, "^");
    } else sprintf(n64dbg + i++, sp);
    if(state->Down){
    	sprintf(n64dbg + i++, "v");
    } else sprintf(n64dbg + i++, sp);
    if(state->Left){
    	sprintf(n64dbg + i++, "<");
    } else sprintf(n64dbg + i++, sp);
    if(state->Right){
    	sprintf(n64dbg + i++, ">");
    } else sprintf(n64dbg + i++, sp);
    if(state->L){
    	sprintf(n64dbg + i++, "L");
    } else sprintf(n64dbg + i++, sp);
    if(state->R){
    	sprintf(n64dbg + i++, "R");
    } else sprintf(n64dbg + i++, sp);
    if(state->C_Up){
    	sprintf(n64dbg + i, "C^");
    } else sprintf(n64dbg + i, sp2);
    i+=2; //++ won't work since we use two spaces
    if(state->C_Down){
    	sprintf(n64dbg + i, "Cv");
    } else sprintf(n64dbg + i, sp2);
    i+=2;
    if(state->C_Left){
    	sprintf(n64dbg + i, "C<");
    } else sprintf(n64dbg + i, sp2);
    i+=2;
    if(state->C_Right){
    	sprintf(n64dbg + i, "C>");
    } else sprintf(n64dbg + i, sp2);
    i+=2;

    sprintf(n64dbg + i++, "X");
    sprintf(n64dbg + i, "%03d", state->X_axis);
    i+=3;
    sprintf(n64dbg + i++, "Y");
    sprintf(n64dbg + i, "%03d", state->Y_axis);
    //Change to upper left, not lower left
    LCD_setPos(N64_DBG_BOX_X1 + 2, N64_DBG_BOX_Y1 - 3);
    LCD_printStr(n64dbg);

}


/*
	printf("A: %d  B: %d  Z: %d  Start: %d  Up: %d  Down: %d  Left: %d  Right: %d  L: %d  R: %d  C_Up: %d  C_Down: %d  C_Left: %d  C_Right: %d  X_axis: %3d  Y_axis: %3d\r\n",
        state->A,
        state->B,
        state->Z,
        state->Start,
        state->Up,
        state->Down,
        state->Left,
        state->Right,
        state->L,
        state->R,
        state->C_Up,
        state->C_Down,
        state->C_Left,
        state->C_Right,
        state->X_axis,
        state->Y_axis
    );
*/


void testBarebones(){

}
