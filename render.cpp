#include <Bela.h>
#include <stdlib.h>
#include <vector>
#include "ThereminReader.h"
#include "HarmonyCalculator.h"
#include "PitchShifter.h"
#include "PitchTracker.h"

std::vector<float> inputAudioBuffer;
std::vector<float> outputAudioBuffer;
std::vector<float> processAudioBuffer1;
std::vector<float> processAudioBuffer2;
std::vector<float> processAudioBuffer3;

ThereminReader thereminReader;
HarmonyCalculator harmonyCalculator;
PitchShifter pitchShifter1;
PitchShifter pitchShifter2;
PitchShifter pitchShifter3;
PitchTracker pitchTracker;

int sampleRate = 0;
int bufferLength = 0;

int thereminCount = 0;
int thereminRead = 0;
float thereminPitchDistance = 0.0f;
float thereminMixDistance = 0.0f;

bool setup(BelaContext *context, void *userData)
{
	// Get audio settings
	sampleRate = context->audioSampleRate; // Set to 44100 Hz
	bufferLength = context->audioFrames; // Set to 128 frames
	thereminRead = sampleRate/bufferLength;
	
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
	
	// Read theremin once every second
	if (thereminCount == thereminRead) {
		thereminCount = 0;
		
		thereminPitchDistance = thereminReader.readPitch(context);
		//thereminMixDistance = thereminReader.readMix(context);
		rt_printf("Pitch: %lf\n", thereminPitchDistance);
		//rt_printf("Mix: %lf\n", thereminMixDistance);
	}
	thereminCount++;
	
	// Determine desired new pitch
	harmonyCalculator.setInputValues(currentF0, thereminPitchDistance);
	
	// Perform desired pitch shifts
	pitchShifter1.shift(currentF0, harmonyCalculator.getFirstHarmony());
	pitchShifter2.shift(currentF0, harmonyCalculator.getSecondHarmony());
	pitchShifter3.shift(currentF0, harmonyCalculator.getThirdHarmony());
	
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
