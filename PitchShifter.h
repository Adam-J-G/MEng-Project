/***** PitchShifter.h *****/

#include <stk/PitShift.h>
#include <soundtouch/SoundTouch.h>
#include <vector>
#include <math.h>

class PitchShifter {
public:
	void initDL(int sampleRate);
	float shiftDL(float frame);
	void setShiftDL(float shift);

	void initWSOLA(int sampleRate, int bufferLength);
	void readInWSOLA(float* audioBuffer);
	void shiftWSOLA(float currentF0, float shiftAmount); // Returns no. shifted samples
	int readOutWSOLA(float* audioBuffer);
	
private:
	float frequnecyIntervalToSemitones(int currentF0, int newF0);
	
	stk::PitShift pitchShifterDL;
	soundtouch::SoundTouch pitchShifterWSOLA;
	
	int sampleRate;
	int bufferLength;
};
