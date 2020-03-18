#include <Bela.h>
#include <stdlib.h>
#include <vector>
#include <algorithm>
#include "ThereminReader.h"
#include "PitchShifter.h"
#include "PitchTracker.h"

std::vector<float> inputAudioBuffer;
std::vector<float> outputAudioBuffer;
std::vector<float> processAudioBuffer1;
std::vector<float> processAudioBuffer2;
std::vector<float> processAudioBuffer3;

ThereminReader thereminReader;
PitchShifter pitchShifter1;
PitchShifter pitchShifter2;
PitchShifter pitchShifter3;
PitchTracker pitchTracker;

int sampleRate = 0;
int bufferLength = 0;

bool setup(BelaContext *context, void *userData)
{
	// Get audio settings
	sampleRate = context->audioSampleRate; // Set to 44100 Hz
	bufferLength = context->audioFrames; // Set to 128 frames
	
	// Initialise theremin reader
	thereminReader.init(context);
	
	// Initialise pitch tracker
	char pitchTrackingMethod[] = "yinfft";
	pitchTracker.init(pitchTrackingMethod, bufferLength, bufferLength, sampleRate);
	
	// Initialise pitch shifters
	pitchShifter1.init(sampleRate, bufferLength);
	pitchShifter2.init(sampleRate, bufferLength);
	pitchShifter3.init(sampleRate, bufferLength);
	
	// Set audio buffer sizes to required length
	inputAudioBuffer.resize(bufferLength);
	outputAudioBuffer.resize(bufferLength);
	processAudioBuffer1.resize(bufferLength);
	processAudioBuffer2.resize(bufferLength);
	processAudioBuffer3.resize(bufferLength);
	
	return true;
}

void render(BelaContext *context, void *userData)
{
	// Read input audio into buffers
	for(unsigned int frameCount = 0; frameCount < bufferLength; frameCount++) {
		inputAudioBuffer[frameCount] = audioRead(context, frameCount, 0);
	}
	
	// Read input audio into pitch shifter
	pitchShifter1.readIn(&inputAudioBuffer[0]);
	pitchShifter2.readIn(&inputAudioBuffer[0]);
	pitchShifter3.readIn(&inputAudioBuffer[0]);
	
	// Estimate pitch of buffer
	int currentF0 = pitchTracker.getPitch(inputAudioBuffer);
	
	// Read ultrasonic theremin sensor values
	float thereminPitchDistance = thereminReader.readPitch(context);
	float thereminMixDistance = thereminReader.readMix(context);
	rt_printf("Pitch: %lf\n", thereminPitchDistance);
	rt_printf("Mix: %lf\n", thereminMixDistance);
		
	// Determine desired new pitch
	float shiftAmount1 = 3.0f; // = value from theremin controller
	float shiftAmount2 = 5.0f; // = calculated value
	float shiftAmount3 = -3.0f; // = calculated value
		
	// Perform desired pitch shifts
	pitchShifter1.shift(currentF0, shiftAmount1);
	pitchShifter2.shift(currentF0, shiftAmount2);
	pitchShifter3.shift(currentF0, shiftAmount3);
	
	// Read shifted values from pitch shifter
	pitchShifter1.readOut(&processAudioBuffer1[0]);
	pitchShifter2.readOut(&processAudioBuffer2[0]);
	pitchShifter3.readOut(&processAudioBuffer3[0]);
	
	// Write output buffer to bela out
	for(unsigned int frameCount = 0; frameCount < bufferLength; frameCount++) {
		outputAudioBuffer[frameCount] = (
			inputAudioBuffer[frameCount]
			+ processAudioBuffer1[frameCount]
			+ processAudioBuffer2[frameCount]
			+ processAudioBuffer3[frameCount]
		);
		
		audioWrite(context, frameCount, 0, outputAudioBuffer[frameCount]);
		audioWrite(context, frameCount, 1, outputAudioBuffer[frameCount]);
	}
}

void cleanup(BelaContext *context, void *userData)
{

}
