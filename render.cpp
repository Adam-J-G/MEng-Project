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

enum PitchShiftType { DelayLine, WSOLA };
PitchShiftType psType = WSOLA;

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
int harmonyCount = 0;
int harmonyRead = 0;

int thereminCount = 0;
int thereminRead = 0;
float thereminPitchDistance = 0.0f;
float thereminMixDistance = 0.0f;
float mixLevel = 0.0f;

bool showLEDNotes = false;

// Potentiometer values
float gainPot = 0.0f;
float harmonyPot = 0.0f;
float keyPot = 0.0f;
float reverbPot = 0.0f;
float prevReverbPot = 0.0f;
float pgaGain = 0;
float prevPgaGain = 0;
int numHarmonies = 0;
int prevNumHarmonies = 0;
int keySig = 0;
int prevKeySig = 0;
bool valueChanged = false;


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
	if (psType == DelayLine) {
		pitchShifter1.initDL(sampleRate);
		pitchShifter2.initDL(sampleRate);
		pitchShifter3.initDL(sampleRate);
	}
	if (psType == WSOLA) {
		pitchShifter1.initWSOLA(sampleRate, PS_BUFFER_SIZE);
		pitchShifter2.initWSOLA(sampleRate, PS_BUFFER_SIZE);
		pitchShifter3.initWSOLA(sampleRate, PS_BUFFER_SIZE);
	}
	
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
	
	pitchShiftTask = Bela_createAuxiliaryTask(&pitch_shift_background, 30, "pitch-shifter");

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
		
		// Switch LED notes on/off
		if (currentF0 != 0.0f) {
			showLEDNotes = true;
		} else {
			showLEDNotes = false;
		}
	}
	harmonyCount++;
	
	// Set shift values for delay line pitch shift
	if (psType == DelayLine) {
		if (numHarmonies > 0) {
			pitchShifter1.setShiftDL(harmonyCalculator.getFirstHarmonyShift());
		}
		if (numHarmonies > 1) {
			pitchShifter2.setShiftDL(harmonyCalculator.getSecondHarmonyShift());
		}
		if (numHarmonies > 2) {
			pitchShifter3.setShiftDL(harmonyCalculator.getThirdHarmonyShift());
		}
	}
	
	// Use WSOLA pitch shifter
	if (psType == WSOLA) {
		// Read input audio into WSOLA pitch shifter
		if (numHarmonies > 0) {
			pitchShifter1.readInWSOLA(psInputBuffer);
		}
		if (numHarmonies > 1) {
			pitchShifter2.readInWSOLA(psInputBuffer);
		}
		if (numHarmonies > 2) {
			pitchShifter3.readInWSOLA(psInputBuffer);
		} 
		
		// Perform desired pitch shifts
		if (numHarmonies > 0) {
			pitchShifter1.shiftWSOLA(currentF0, 3.0);//harmonyCalculator.getFirstHarmonyShift());
		}
		if (numHarmonies > 1) {
			pitchShifter2.shiftWSOLA(currentF0, -3.0);//harmonyCalculator.getSecondHarmonyShift());
		}
		if (numHarmonies > 2) {
			pitchShifter3.shiftWSOLA(currentF0, 5.0);//harmonyCalculator.getThirdHarmonyShift());
		}
	
		// Read shifted values from WSOLA pitch shifter	
		if (numHarmonies > 0) {
			pitchShifter1.readOutWSOLA(psOutputBuffer1);
		}
		if (numHarmonies > 1) {
			pitchShifter2.readOutWSOLA(psOutputBuffer2);
		}
		if (numHarmonies > 2) {
			pitchShifter3.readOutWSOLA(psOutputBuffer3);
		}
	
		// 
		pointer = (inBufferPointer + PS_BUFFER_SIZE) % BUFFER_SIZE;
		for(int n = 0; n < PS_BUFFER_SIZE; n++) {
			if (numHarmonies > 0) {
				procBuffer1[pointer] = psOutputBuffer1[n];
			} else {
				procBuffer1[pointer] = 0;
			}
			if (numHarmonies > 1) {
				procBuffer2[pointer] = psOutputBuffer2[n];
			} else {
				procBuffer2[pointer] = 0;
			}
			if (numHarmonies > 2) {
				procBuffer3[pointer] = psOutputBuffer3[n];
			} else {
				procBuffer3[pointer] = 0;
			}
			
			pointer++;
			if(pointer >= BUFFER_SIZE)
				pointer = 0;
		}
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
	for(unsigned int frameCount = 0; frameCount < numFrames; frameCount++) {
		inputAudioBuffer[bufferPointer] = audioRead(context, frameCount, 0);
		
		if (psType == DelayLine) {
			outputAudioBuffer[frameCount] = reverberator.applyReverb(
				inputAudioBuffer[bufferPointer]
				+ (pitchShifter1.shiftDL(inputAudioBuffer[bufferPointer]) * mixLevel)
				+ (pitchShifter2.shiftDL(inputAudioBuffer[bufferPointer]) * mixLevel)
				+ (pitchShifter3.shiftDL(inputAudioBuffer[bufferPointer]) * mixLevel)
			);
		}
		if (psType == WSOLA) {
			outputAudioBuffer[frameCount] = reverberator.applyReverb(
				inputAudioBuffer[bufferPointer]
				+ (processAudioBuffer1[bufferPointer] * mixLevel)
				+ (processAudioBuffer2[bufferPointer] * mixLevel)
				+ (processAudioBuffer3[bufferPointer] * mixLevel)
			);
		}
		
		for(int channel = 0; channel < 2; channel++) {
			audioWrite(context, frameCount, channel, (outputAudioBuffer[frameCount] / ((numHarmonies + 1) * mixLevel)));
		}
		
		bufferPointer++;
		if(bufferPointer >= BUFFER_SIZE)
			bufferPointer = 0;
		
		sampleCount++;
		if(sampleCount >= PS_BUFFER_SIZE) {
			/*** Handle Potentiometers ***/
			
			// Update potetniometer values
			gainPot = analogRead(context, 0, 1);
			harmonyPot = analogRead(context, 0, 2);
			keyPot = analogRead(context, 0, 3);
			reverbPot = analogRead(context, 0, 4);
			
			// Set previous values
			prevPgaGain = pgaGain;
			prevNumHarmonies = numHarmonies;
			prevKeySig = keySig;
			
			// Calculate new values from pot readings
			pgaGain = map(gainPot, 0, 1, 0, 50);
			numHarmonies = static_cast<int>(roundf(map(harmonyPot, 0, 0.86, 0, 3)));
			keySig = static_cast<int>(roundf(map(keyPot, 0, 0.86, 0, 11)));
			
			// Accommodate potentiometer value changes
			valueChanged = false;
			if (abs(pgaGain - prevPgaGain) > 3.0f) {
				valueChanged = true;
				Bela_setPgaGain(pgaGain, 0);
				ledManager.lightUpTo(static_cast<int>(pgaGain / 4.17f));
			}
			if (numHarmonies != prevNumHarmonies) {
				valueChanged = true;
				ledManager.lightUpTo(numHarmonies);
			}
			if (keySig != prevKeySig) {
				valueChanged = true;
				harmonyCalculator.setKeySig(keySig);
				ledManager.lightPin(keySig);
			}
			if (abs(reverbPot - prevPgaGain) > 0.06f) {
				valueChanged = true;
				reverberator.setMix(reverbPot);
				ledManager.lightUpTo(static_cast<int>(reverbPot * 12.0f));
			}
			prevReverbPot = reverbPot;
			if (valueChanged == true) {
				showLEDNotes = false;
			}
			
			/*****************************/
	
			// Shedule task for pitch shifting
			psBufferPointer = bufferPointer;
			Bela_scheduleAuxiliaryTask(pitchShiftTask);
		
			sampleCount = 0;
		}
	}
	
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
	mixLevel = 0.8f;
}

void cleanup(BelaContext *context, void *userData)
{
	
}
