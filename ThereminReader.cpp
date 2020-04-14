/***** ThereminReader.cpp *****/

#include "ThereminReader.h"

void ThereminReader::init(BelaContext *context) {
	// Set the mode of digital pins
	pinMode(context, 0, pitchTriggerDigitalOutPin, OUTPUT); // sending to TRIGGER PIN (pitch)
	pinMode(context, 0, pitchEchoDigitalInPin, INPUT); // receiving from ECHO PIN (pitch)
	
	pinMode(context, 0, mixTriggerDigitalOutPin, OUTPUT); // sending to TRIGGER PIN (mix)
	pinMode(context, 0, mixEchoDigitalInPin, INPUT); // receiving from ECHO PIN (mix)
	
	pitchPulseIn.setup(context, pitchEchoDigitalInPin, HIGH); //detect HIGH pulses on this pin (pitch)
	mixPulseIn.setup(context, mixEchoDigitalInPin, HIGH); //detect HIGH pulses on this pin (mix)
}

float ThereminReader::readPitch(BelaContext *context) {
	for(unsigned int n = 0; n<context->digitalFrames; n++) {
		pitchTriggerCount++;
		if(pitchTriggerCount == triggerInterval) {
			pitchTriggerCount = 0;
			digitalWriteOnce(context, n / 2, pitchTriggerDigitalOutPin, HIGH); //write the status to the trig pin
		}
		
		int pulseLength = pitchPulseIn.hasPulsed(context, n); // will return the pulse duration(in samples) if a pulse just ended 
		float duration = 1e6 * pulseLength / context->digitalSampleRate; // pulse duration in microseconds
		if(pulseLength >= minPulseLength){
			// rescaling according to the datasheet
			float distance = duration / rescaleVal;
			if (distance < 40.0f) {
				return distance;
			} else {
				return 0.0f;
			}
		}
	}
	return 0.0f;
}

float ThereminReader::readMix(BelaContext *context) {
	for(unsigned int n = 0; n<context->digitalFrames; n++) {
		mixTriggerCount++;
		if(mixTriggerCount == triggerInterval) {
			mixTriggerCount = 0;
			digitalWriteOnce(context, n / 2, mixTriggerDigitalOutPin, HIGH); //write the status to the trig pin
		}
		
		int pulseLength = mixPulseIn.hasPulsed(context, n); // will return the pulse duration(in samples) if a pulse just ended 
		float duration = 1e6 * pulseLength / context->digitalSampleRate; // pulse duration in microseconds
		if(pulseLength >= minPulseLength) {
			// rescaling according to the datasheet
			float distance = duration / rescaleVal;
			if (distance < 40.0f) {
				return distance;
			} else {
				return 0.0f;
			}
		}
	}
	return 0.0f;
}
