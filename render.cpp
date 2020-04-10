#include <Bela.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <vector>
#include "ThereminReader.h"
#include "HarmonyCalculator.h"
#include "LEDManager.h"
#include "PitchShifter.h"
#include "PitchTracker.h"
#include "Reverberator.h"

#define PS_BUFFER_SIZE 2048
#define BUFFER_SIZE (PS_BUFFER_SIZE * 2)

int bufferPointer = 0;
int psBufferPointer = 0;
int sampleCount = 0;

AuxiliaryTask pitchShiftTask;
void pitch_shift_background(void*);

std::vector<float> inputAudioBuffer;
std::vector<float> outputAudioBuffer;
std::vector<float> processAudioBuffer1;
std::vector<float> processAudioBuffer2;
std::vector<float> processAudioBuffer3;
float* psInputBuffer = new float[PS_BUFFER_SIZE];
float* psOutputBuffer1 = new float[PS_BUFFER_SIZE];
float* psOutputBuffer2 = new float[PS_BUFFER_SIZE];
float* psOutputBuffer3 = new float[PS_BUFFER_SIZE];

ThereminReader thereminReader;
HarmonyCalculator harmonyCalculator;
LEDManager ledManager;
PitchShifter pitchShifter1;
PitchShifter pitchShifter2;
PitchShifter pitchShifter3;
PitchTracker pitchTracker;
Reverberator reverberator;

int sampleRate = 0;
int numFrames = 0;

float currentF0 = 0.0f;
int numHarmonies = 3;
int harmonyCount = 0;
int harmonyRead = 0;

int thereminCount = 0;
int thereminRead = 0;
float thereminPitchDistance = 0.0f;
float thereminMixDistance = 0.0f;
float mixLevel = 0.0f;

bool showLEDNotes = false;

bool setup(BelaContext *context, void *userData)
{
	// Get audio settings
	sampleRate = context->audioSampleRate; // Set to 44100 Hz
	numFrames = context->audioFrames; // Set to 128 frames
	thereminRead = sampleRate / numFrames;
	harmonyRead = (sampleRate / PS_BUFFER_SIZE) / 2;
	
	// Initialise theremin reader
	thereminReader.init(context);
	
	// Initialise led ledManager
	ledManager.init(context);
	
	// Initialise pitch tracker
	char pitchTrackingMethod[] = "yinfft";
	pitchTracker.init(pitchTrackingMethod, PS_BUFFER_SIZE, sampleRate);
	
	// Initialise pitch shifters
	pitchShifter1.init(sampleRate, PS_BUFFER_SIZE);
	pitchShifter2.init(sampleRate, PS_BUFFER_SIZE);
	pitchShifter3.init(sampleRate, PS_BUFFER_SIZE);
	
	// Initialise reverberator
	reverberator.init(sampleRate);
	
	// Set audio buffer sizes to required length
	inputAudioBuffer.resize(BUFFER_SIZE);
	outputAudioBuffer.resize(numFrames);
	processAudioBuffer1.resize(BUFFER_SIZE);
	processAudioBuffer2.resize(BUFFER_SIZE);
	processAudioBuffer3.resize(BUFFER_SIZE);
	memset(psInputBuffer, 0, PS_BUFFER_SIZE * sizeof(float));
	memset(psOutputBuffer1, 0, PS_BUFFER_SIZE * sizeof(float));
	memset(psOutputBuffer2, 0, PS_BUFFER_SIZE * sizeof(float));
	memset(psOutputBuffer3, 0, PS_BUFFER_SIZE * sizeof(float));
	
	pitchShiftTask = Bela_createAuxiliaryTask(&pitch_shift_background, 90, "pitch-shifter");

	return true;
}

void process_shift(float *inBuffer, int inBufferPointer, float *procBuffer1, float *procBuffer2, float *procBuffer3)
{
	// Copy buffer into PS input
	int pointer = inBufferPointer;
	for(int n = 0; n < PS_BUFFER_SIZE; n++) {
		psInputBuffer[n] = inBuffer[pointer];
		
		pointer++;
		if(pointer >= BUFFER_SIZE)
			pointer = 0;
	}
	
	// Estimate pitch of buffer
	currentF0 = pitchTracker.getPitch(psInputBuffer);
	
	// Determine desired harmonies
	if (harmonyCount == harmonyRead) {
		harmonyCount = 0;
		
		harmonyCalculator.setInputValues(currentF0, thereminPitchDistance);
		rt_printf("n1: %d\n", harmonyCalculator.getNoteIn());
		rt_printf("n2: %d\n", harmonyCalculator.getFirstHarmonyNote());
		rt_printf("n3: %d\n", harmonyCalculator.getSecondHarmonyNote());
		rt_printf("n4: %d\n", harmonyCalculator.getThirdHarmonyNote());
		rt_printf(".\n");
		
		// Switch LED notes on/off
		if (currentF0 != 0.0f) {
			showLEDNotes = true;
		} else {
			showLEDNotes = false;
		}
	}
	harmonyCount++;
	
	// Read input audio into pitch shifter
	pitchShifter1.readIn(psInputBuffer);
	pitchShifter2.readIn(psInputBuffer);
	pitchShifter3.readIn(psInputBuffer);
	
	// Perform desired pitch shifts
	pitchShifter1.shift(currentF0, harmonyCalculator.getFirstHarmonyShift());
	pitchShifter2.shift(currentF0, harmonyCalculator.getSecondHarmonyShift());
	pitchShifter3.shift(currentF0, harmonyCalculator.getThirdHarmonyShift());
	
	// Read shifted values from pitch shifter
	pitchShifter1.readOut(psOutputBuffer1);
	pitchShifter2.readOut(psOutputBuffer2);
	pitchShifter3.readOut(psOutputBuffer3);
	
	// 
	pointer = (inBufferPointer + PS_BUFFER_SIZE) % BUFFER_SIZE;
	for(int n = 0; n < PS_BUFFER_SIZE; n++) {
		procBuffer1[pointer] = psOutputBuffer1[n];
		procBuffer2[pointer] = psOutputBuffer2[n];
		procBuffer3[pointer] = psOutputBuffer3[n];
		
		pointer++;
		if(pointer >= BUFFER_SIZE)
			pointer = 0;
	}
}

void pitch_shift_background(void*)
{
	process_shift(
		&inputAudioBuffer[0],
		psBufferPointer,
		&processAudioBuffer1[0],
		&processAudioBuffer2[0],
		&processAudioBuffer3[0]
	);
}

void render(BelaContext *context, void *userData)
{
	/*// Read input audio into buffers
	for(unsigned int frameCount = 0; frameCount < numFrames; frameCount++) {
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
		
		thereminPitchDistance = 12.0f;//thereminReader.readPitch(context);
		//thereminMixDistance = thereminReader.readMix(context);
		//rt_printf("Pitch: %lf\n", thereminPitchDistance);
		//rt_printf("Mix: %lf\n", thereminMixDistance);
	}
	thereminCount++;
	
	// Determine desired harmonies
	harmonyCalculator.setInputValues(currentF0, thereminPitchDistance);
	
	// Perform desired pitch shifts
	pitchShifter1.shift(currentF0, harmonyCalculator.getFirstHarmonyShift());
	pitchShifter2.shift(currentF0, harmonyCalculator.getSecondHarmonyShift());
	pitchShifter3.shift(currentF0, harmonyCalculator.getThirdHarmonyShift());
	
	ledManager.updateNotes(
		context,
		3,
		harmonyCalculator.getNoteIn(),
		harmonyCalculator.getFirstHarmonyNote(),
		harmonyCalculator.getSecondHarmonyNote(),
		harmonyCalculator.getThirdHarmonyNote()
	);
	
	thereminMixDistance = map(analogRead(context, 0, 0), 0, 1, 0, 40);
	//rt_printf("%lf\n", thereminMixDistance);
	// Calculate wet/dry mix of harmonies
	float mixLevel = powf((thereminMixDistance / 33.0f), M_E);
	
	// Read shifted values from pitch shifter
	pitchShifter1.readOut(&processAudioBuffer1[0]);
	pitchShifter2.readOut(&processAudioBuffer2[0]);
	pitchShifter3.readOut(&processAudioBuffer3[0]);
	
	// Write output buffer to bela out
	for(unsigned int frameCount = 0; frameCount < bufferLength; frameCount++) {
		outputAudioBuffer[frameCount] = (
			inputAudioBuffer[frameCount]
			+ (processAudioBuffer1[frameCount] * mixLevel)
			+ (processAudioBuffer2[frameCount] * mixLevel)
			+ (processAudioBuffer3[frameCount] * mixLevel)
		);
		
		audioWrite(context, frameCount, 0, outputAudioBuffer[frameCount]);
		audioWrite(context, frameCount, 1, outputAudioBuffer[frameCount]);
	}*/

	for(unsigned int frameCount = 0; frameCount < numFrames; frameCount++) {
		inputAudioBuffer[bufferPointer] = audioRead(context, frameCount, 0);
		
		// Copy output buffer to output
		outputAudioBuffer[frameCount] = reverberator.applyReverb(
			inputAudioBuffer[bufferPointer]
			+ (processAudioBuffer1[bufferPointer] * mixLevel)
			+ (processAudioBuffer2[bufferPointer] * mixLevel)
			+ (processAudioBuffer3[bufferPointer] * mixLevel)
		);
		
		for(int channel = 0; channel < 2; channel++) {
			audioWrite(context, frameCount, channel, (outputAudioBuffer[frameCount] / ((numHarmonies + 1) * mixLevel)));
		}
		
		bufferPointer++;
		if(bufferPointer >= BUFFER_SIZE)
			bufferPointer = 0;
		
		sampleCount++;
		if(sampleCount >= PS_BUFFER_SIZE) {
			psBufferPointer = bufferPointer;
			Bela_scheduleAuxiliaryTask(pitchShiftTask);
		
			sampleCount = 0;
		}
	}
	
	// Estimate pitch of buffer
	//currentF0 = pitchTracker.getPitch(inputAudioBuffer, gInputBufferPointer);
	
	// Read theremin once every second
	if (thereminCount == thereminRead) {
		thereminCount = 0;
		
		thereminPitchDistance = 10.0f;//thereminReader.readPitch(context);
		//thereminMixDistance = thereminReader.readMix(context);
		//rt_printf("Pitch: %lf\n", thereminPitchDistance);
		//rt_printf("Mix: %lf\n", thereminMixDistance);
	}
	thereminCount++;
	
	// Update LEDs with current notes
	if (showLEDNotes) {
		ledManager.updateNotes(
			context,
			numHarmonies,
			harmonyCalculator.getNoteIn(),
			harmonyCalculator.getFirstHarmonyNote(),
			harmonyCalculator.getSecondHarmonyNote(),
			harmonyCalculator.getThirdHarmonyNote()
		);
	} else {
		ledManager.clearNotes(context);
	}
	
	//thereminMixDistance = map(analogRead(context, 0, 1), 0, 1, 0, 40);
	// Calculate wet/dry mix of harmonies
	//mixLevel = powf((thereminMixDistance / 33.0f), M_E);
	mixLevel = 1.0f;
	
	reverberator.setMix(analogRead(context, 0, 4));
}

void cleanup(BelaContext *context, void *userData)
{
	
}
