/***** PitchShifter.cpp *****/

#include "PitchShifter.h"

/*** Delay-line Pitch Shift Functions ***/
void PitchShifter::initDL(int sampleRate) {
	stk::Stk::setSampleRate(sampleRate);
	pitchShifterDL.setShift(1.0);
	pitchShifterDL.setEffectMix(1.0);
}

float PitchShifter::shiftDL(float frame) {
	return pitchShifterDL.tick(frame);
}

void PitchShifter::setShiftDL(float semitoneShift) {
	float shift = powf(2.0f, (semitoneShift / 12.0f));
	pitchShifterDL.setShift(shift);
}


/*** WSOLA Pitch Shift Functions ***/
void PitchShifter::initWSOLA(int sampleRate, int bufferLength) {
	this->sampleRate = sampleRate;
	this->bufferLength = bufferLength;
	
	// Required settings from WSOLA pitch shifter tool
	pitchShifterWSOLA.setSampleRate(sampleRate);
	pitchShifterWSOLA.setChannels(1);
};

void PitchShifter::readInWSOLA(float* audioBuffer) {
	// Add input audio frames to pitch shifter tool
	pitchShifterWSOLA.putSamples(audioBuffer, bufferLength);
}

void PitchShifter::shiftWSOLA(float currentF0, float shiftAmount) {
	// Set a +/- semitone pitch shift amount
	pitchShifterWSOLA.setPitchSemiTones(shiftAmount);
}

int PitchShifter::readOutWSOLA(float* audioBuffer) {
	// Read shifted audio frames from pitch shifter tool
	int nSamples = 0;
	nSamples = pitchShifterWSOLA.receiveSamples(audioBuffer, bufferLength);
	return nSamples;
}

float PitchShifter::frequnecyIntervalToSemitones(int currentF0, int newF0) {
	if (currentF0 != 0) {
		float shiftAmount = (12.0f * log2((float) newF0 / (float) currentF0));
		return shiftAmount;	
	}
	return 0.0f;
}
