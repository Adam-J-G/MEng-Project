/***** LEDManager.cpp *****/

#include "LEDManager.h"

void LEDManager::init(BelaContext *context) {
	for (int pin = MIN_LED_PIN; pin <= MAX_LED_PIN; pin++) {
		pinMode(context, 0, pin, OUTPUT);
	}
}

void LEDManager::updateNotes(BelaContext* context, int numHarmonies, int note1, int note2, int note3, int note4) {
	this->clearNotes(context);
	
	digitalWrite(context, 0, getLEDPin(note1), HIGH);
	if (numHarmonies > 0) {
		digitalWrite(context, 0, getLEDPin(note2), HIGH);
	}
	if (numHarmonies > 1) {
		digitalWrite(context, 0, getLEDPin(note3), HIGH);
	}
	if (numHarmonies > 2) {
		digitalWrite(context, 0, getLEDPin(note4), HIGH);
	}
}

void LEDManager::clearNotes(BelaContext* context) {
	for (int pin = MIN_LED_PIN; pin <= MAX_LED_PIN; pin++) {
		pinMode(context, 0, pin, OUTPUT);
		digitalWrite(context, 0, pin, LOW);
	}
}

int LEDManager::getLEDPin(int note) {
	return (((note + 9) % 12) + MIN_LED_PIN);
}
