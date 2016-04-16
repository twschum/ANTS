/*
 * speaker_driver.h
 *
 *  Created on: Apr 7, 2016
 *      Author: rpokeefe
 */
#include "drivers/mss_ace/mss_ace.h"
#include "target_aquired.h"
#include "on_fire.h"
#include "provoked.h"
#include "good_shot.h"
#include "well_done.h"
#ifndef SPEAKER_DRIVER_H_
#define SPEAKER_DRIVER_H_


enum sound_type {
	BEGIN_AUTO,
	END_AUTO,
	SHOT_FIRED_MANUAL
};

typedef enum {
	PROVOKED,
	GOOD_SHOT,
	WELL_DONE
} manual_sounds;


//To be run once at startup, or if sound is desired
//after speaker_kill() has been run
void speaker_init() {
	ACE_init();
	ACE_configure_sdd (SDD0_OUT, SDD_8_BITS,
			SDD_VOLTAGE_MODE|SDD_RETURN_TO_ZERO,INDIVIDUAL_UPDATE);
	ACE_enable_sdd(SDD0_OUT);
}

//*NOTE* Blocking function
void speaker_play(enum sound_type sound) {
	volatile uint32_t i = 0;
	volatile uint32_t wait = 0;
	static manual_sounds man_sound_select = GOOD_SHOT;

	if (sound == BEGIN_AUTO) {
		while (i < 14668) {
			ACE_set_sdd_value(SDD0_OUT,(uint32_t)(target[i]));
			for (wait = 0; wait < 340; ++wait) {}
			i++;
		}
	}
	else if (sound == END_AUTO) {
		while (i < 14100) {
			ACE_set_sdd_value(SDD0_OUT,(uint32_t)(fire[i]));
			for (wait = 0; wait < 375; ++wait) {}
			i++;
		}
	}
	else if(sound == SHOT_FIRED_MANUAL) {
		if (man_sound_select == GOOD_SHOT) {
			while (i < 8605) {
				ACE_set_sdd_value(SDD0_OUT,(uint32_t)(good_shot[i]));
				for (wait = 0; wait < 420; ++wait) {}
				i++;
			}
			man_sound_select = WELL_DONE;
		}
		else if (man_sound_select == WELL_DONE) {
			while (i < 8024) {
				ACE_set_sdd_value(SDD0_OUT,(uint32_t)(well[i]));
				for (wait = 0; wait < 621; ++wait) {}
				i++;
			}
			man_sound_select = PROVOKED;
		}
		else if (man_sound_select == PROVOKED) {
			while (i < 11216) {
				ACE_set_sdd_value(SDD0_OUT,(uint32_t)(provoked[i]));
				for (wait = 0; wait < 657; ++wait) {}
				i++;
			}
			man_sound_select = GOOD_SHOT;
		}
	}
	ACE_set_sdd_value(SDD0_OUT,(uint32_t)(0));
}

//only call if sound will not be played again for a long time
//this function is somewhat unnecessary. but i thought it should
//be included for completeness.
void speaker_kill () {
	ACE_disable_sdd(SDD0_OUT);
}


#endif /* SPEAKER_DRIVER_H_ */
