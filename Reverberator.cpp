/***** Reverberator.cpp *****/

#include "Reverberator.h"

void Reverberator::init(int sampleRate) {
	stk::Stk::setSampleRate(sampleRate);
	reverb.setEffectMix(0.0);
}

float Reverberator::applyReverb(float frame) {
	return reverb.tick(frame);
}

void Reverberator::setMix(float mix) {
	reverb.setEffectMix(mix);
}
