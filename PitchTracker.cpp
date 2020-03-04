/***** PitchTracker.cpp *****/

#include "PitchTracker.h"

void PitchTracker::init(char* pitch_method, int buffer_size, int hop_size, int samplerate) {
	// Pass initialisation variables to pitch estimation tool
	pitchDetector = new_aubio_pitch (pitch_method, buffer_size, hop_size, samplerate);
	pitchBuffer = new_fvec(1);
}

int PitchTracker::getPitch(std::vector<float> &audioBuffer) {
	// Fill specialised float vector with audio buffer data
	fvec_t* fvecAudioBuffer = new_fvec (audioBuffer.size());
	for (int i = 0; i < fvecAudioBuffer->length; i++) {
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
