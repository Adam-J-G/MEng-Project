/***** PitchShifter.cpp *****/

#include "PitchShifter.h"

void PitchShifter::init(int sampleRate, int bufferLength) {
	this->sampleRate = sampleRate;
	this->bufferLength = bufferLength;
	
	// Required settings from WSOLA pitch shifter tool
	pitchShifter.setSampleRate(sampleRate);
	pitchShifter.setChannels(1);
};

void PitchShifter::readIn(float* audioBuffer) {
	// Add input audio frames to pitch shifter tool
	pitchShifter.putSamples(audioBuffer, bufferLength);
}

void PitchShifter::shift(float currentF0, float shiftAmount) {
	// Set a +/- semitone pitch shift amount
	pitchShifter.setPitchSemiTones(shiftAmount);
}

int PitchShifter::readOut(float* audioBuffer) {
	// Read shifted audio frames from pitch shifter tool
	int nSamples = 0;
	nSamples = pitchShifter.receiveSamples(audioBuffer, bufferLength);
	return nSamples;
}

float PitchShifter::frequnecyIntervalToSemitones(int currentF0, int newF0) {
	if (currentF0 != 0) {
		float shiftAmount = (12.0f * log2((float) newF0 / (float) currentF0));
		return shiftAmount;	
	}
	return 0.0f;
}
