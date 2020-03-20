/***** HarmonyCalculator.cpp *****/

#include "HarmonyCalculator.h"

void HarmonyCalculator::setKeySig(int keySig) {
	this->keySig = static_cast<float>(keySig);
	scale[0] = keySig;
	scale[1] = fmodf_neon((keySig + 2.0f), 12.0f);
	scale[2] = fmodf_neon((keySig + 4.0f), 12.0f);
	scale[3] = fmodf_neon((keySig + 5.0f), 12.0f);
	scale[4] = fmodf_neon((keySig + 7.0f), 12.0f);
	scale[5] = fmodf_neon((keySig + 9.0f), 12.0f);
	scale[6] = fmodf_neon((keySig + 11.0f), 12.0f);
}

void HarmonyCalculator::setInputValues(float currentF0, float currentThereminVal) {
	// Account for single dropouts in theremin readings
	if (currentThereminVal == 0.0f) {
		interval = (prevThereminVal - 20.0f) / 4.0f;
	} else {
		interval = (currentThereminVal - 20.0f) / 4.0f;
	}
	prevThereminVal = currentThereminVal;
	
	// Estimate closest note from current pitch
	float noteNum = log10f_neon(currentF0 / 27.5f) / log10f_neon(powf_neon(2.0f, 1.0f / 12.0f));
	float note = fmodf_neon(roundf(noteNum), 12.0f); // A = 0
	
	int noteIndex = getNoteInScaleIndex(note);
	float intervalRound = roundf(interval);
	float intervalDif = interval - intervalRound;
	
	firstHarmony = scale[noteIndex + static_cast<int>(intervalRound)] - note + intervalDif;
	secondHarmony = scale[noteIndex + static_cast<int>(intervalRound) + 2] - note + intervalDif;
	thirdHarmony = scale[noteIndex + static_cast<int>(intervalRound) + 4] - note + intervalDif;
}

int HarmonyCalculator::getNoteInScaleIndex(float note) {
	for (float i = 0.0f; i < 2.0f; i++) {
		note = note - i;
		if (note == scale[0]) {
			return 0;
		} else if (note == scale[1]) {
			return 1;
		} else if (note == scale[2]) {
			return 2;
		} else if (note == scale[3]) {
			return 3;
		} else if (note == scale[4]) {
			return 4;
		} else if (note == scale[5]) {
			return 5;
		} else if (note == scale[6]) {
			return 6;
		}
	}
	return 0;
}

float HarmonyCalculator::getFirstHarmony() {
	return firstHarmony;
}

float HarmonyCalculator::getSecondHarmony() {
	return secondHarmony;
}

float HarmonyCalculator::getThirdHarmony() {
	return thirdHarmony;
}