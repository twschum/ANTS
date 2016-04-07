/*
 * speaker_driver.h
 *
 *  Created on: Apr 7, 2016
 *      Author: rpokeefe
 */
#include "drivers/mss_ace/mss_ace.h"

#ifndef SPEAKER_DRIVER_H_
#define SPEAKER_DRIVER_H_

void speaker_init() {
	ACE_configure_sdd (SDD0_OUT, SDD_24_BITS, SDD_VOLTAGE_MODE, SYNC_UPDATE);
}

void play_sound() {
	ACE_enable_sdd(SDD0_OUT);
	ACE_set_sdd_value(SDD0_OUT, 0x00FFFFFF);
	ACE_disable_sdd(SDD0_OUT);
}


#endif /* SPEAKER_DRIVER_H_ */
