/*
 * speaker_driver.h
 *
 *  Created on: Apr 7, 2016
 *      Author: rpokeefe
 */
#include "drivers/mss_ace/mss_ace.h"
#include "sound.h"
#ifndef SPEAKER_DRIVER_H_
#define SPEAKER_DRIVER_H_

//To be run once at startup, or if sound is desired
//after speaker_kill() has been run
void speaker_init() {
	ACE_init();
	ACE_configure_sdd (SDD0_OUT, SDD_8_BITS,
			SDD_VOLTAGE_MODE|SDD_RETURN_TO_ZERO,INDIVIDUAL_UPDATE);
	ACE_enable_sdd(SDD0_OUT);

}

//call every time you want the sound to play
//*NOTE* Blocking function
void speaker_play() {
	volatile uint32_t i = 0;
	volatile uint32_t wait = 0;
	while (i < 15935) {
		ACE_set_sdd_value(SDD0_OUT,(uint32_t)(systems_go[i]));
		for (wait = 0; wait < 700; ++wait) {}
		i++;
	}
//	i = 0;
//	while (i < 34824) {
//		ACE_set_sdd_value(SDD0_OUT,(uint32_t)(turret[i]));
//		for (wait = 0; wait < 700; ++wait) {}
//		i++;
//	}
	ACE_set_sdd_value(SDD0_OUT,(uint32_t)(0));
}

//only call if sound will not be played again for a long time
//this function is somewhat unnecessary. but i thought it should
//be included for completeness.
void speaker_kill () {
	ACE_disable_sdd(SDD0_OUT);
}


#endif /* SPEAKER_DRIVER_H_ */
