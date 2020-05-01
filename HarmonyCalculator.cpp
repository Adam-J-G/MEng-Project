/***** HarmonyCalculator.cpp *****/

#include "HarmonyCalculator.h"
#include <Bela.h>

void HarmonyCalculator::setKeySig(int key) {
	keySig = (key + 3) % 12;
	scale[0] = keySig;
	scale[1] = (keySig + 2) % 12;
	scale[2] = (keySig + 4) % 12;
	scale[3] = (keySig + 5) % 12;
	scale[4] = (keySig + 7) % 12;
	scale[5] = (keySig + 9) % 12;
	scale[6] = (keySig + 11) % 12;
}

void HarmonyCalculator::setInputValues(float currentF0, float currentThereminVal) {
	// Handle no found input pitch
	if (currentF0 == 0.0f) {
		noteIn = firstHarmonyNote = secondHarmonyNote = thirdHarmonyNote = 0;
		firstHarmonyShift = secondHarmonyShift = thirdHarmonyShift = 0.0f;
		return;
	}
	
	// Translate distance (cm) to a suitable interval value
	interval = (currentThereminVal / 5.0f);
	
	// Estimate closest note from current pitch
	float noteInNum = log10f(currentF0 / 27.5f) / log10f(powf(2.0f, 1.0f / 12.0f));
	noteIn = static_cast<int>(roundf(noteInNum)) % 12; // A = 0
	
	// Obtain paramaters for harmony note calculation
	int noteIndex = getNoteInScaleIndex(noteIn);
	float intervalRound = roundf(interval);
	float intervalDif = interval - intervalRound;
	
	// Calculate harmony notes
	firstHarmonyNote = scale[((noteIndex + static_cast<int>(intervalRound)) % 7)];
	secondHarmonyNote = scale[((noteIndex + (static_cast<int>(intervalRound) * 2)) % 7)];
	thirdHarmonyNote = scale[((noteIndex + (static_cast<int>(intervalRound) * 3)) % 7)];
	
	// Calculate required semitone pitch shifts
	firstHarmonyShift = firstHarmonyNote - noteIn + intervalDif;
	if (firstHarmonyShift > 6.0f) {
		firstHarmonyShift = firstHarmonyShift - 12.0f;
	}
	secondHarmonyShift = secondHarmonyNote - noteIn + intervalDif;
	if (secondHarmonyShift > 6.0f) {
		secondHarmonyShift = secondHarmonyShift - 12.0f;
	}
	thirdHarmonyShift = thirdHarmonyNote - noteIn + intervalDif;
	if (thirdHarmonyShift > 6.0f) {
		thirdHarmonyShift = thirdHarmonyShift - 12.0f;
	}
}

int HarmonyCalculator::getNoteInScaleIndex(int note) {
	for (int i = 0; i < 2; i++) {
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

int HarmonyCalculator::getNoteIn() {
	return static_cast<int>(noteIn);
}

int HarmonyCalculator::getFirstHarmonyNote() {
	return static_cast<int>(firstHarmonyNote);
}

int HarmonyCalculator::getSecondHarmonyNote() {
	return static_cast<int>(secondHarmonyNote);
}

int HarmonyCalculator::getThirdHarmonyNote() {
	return static_cast<int>(thirdHarmonyNote);
}

float HarmonyCalculator::getFirstHarmonyShift() {
	return firstHarmonyShift;
}

float HarmonyCalculator::getSecondHarmonyShift() {
	return secondHarmonyShift;
}

float HarmonyCalculator::getThirdHarmonyShift() {
	return thirdHarmonyShift;
}