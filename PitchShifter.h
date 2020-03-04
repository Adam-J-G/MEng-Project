/***** PitchShifter.h *****/

#include <soundtouch/SoundTouch.h>
#include <vector>
#include <math.h>

class PitchShifter {
public:
	void init(int sampleRate, int bufferLength);
	void readIn(float* audioBuffer);
	void shift(float currentF0, float shiftAmount); // Returns no. shifted samples
	int readOut(float* audioBuffer);
	
private:
	float frequnecyIntervalToSemitones(int currentF0, int newF0);
	soundtouch::SoundTouch pitchShifter;
	int sampleRate;
	int bufferLength;
};
