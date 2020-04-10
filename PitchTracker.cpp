/***** PitchTracker.cpp *****/

#include "PitchTracker.h"

void PitchTracker::init(char* pitchMethod, int bufferSize, int samplerate) {
	// Pass initialisation variables to pitch estimation tool
	pitchDetector = new_aubio_pitch (pitchMethod, bufferSize, bufferSize, samplerate);
	pitchBuffer = new_fvec(1);
	
	fvecAudioBuffer = new_fvec(bufferSize);
	this->bufferSize = bufferSize;
}

int PitchTracker::getPitch(float* audioBuffer) {
	// Fill specialised float vector with audio buffer data
	for (int i = 0; i < bufferSize; i++) {
		fvecAudioBuffer->data[i] = audioBuffer[i];
	}

	// Perform pitch estiation
	aubio_pitch_do(pitchDetector, fvecAudioBuffer, pitchBuffer);

	// Return estimated pitch if it lies below realistic maximum
	if (fvec_get_sample(pitchBuffer, 0) < MAX_FREQUENCY) {
		return fvec_get_sample(pitchBuffer, 0);
	}
	return 0;
}
