/***** PitchTracker.h *****/

#include <aubio/aubio.h>
#include <vector>
#define MAX_FREQUENCY 4000

class PitchTracker {
public:
	void init(char* pitchMethod, int bufferSize, int samplerate);
	int getPitch(float* audioBuffer);
	
private:
	aubio_pitch_t *pitchDetector;
	fvec_t *pitchBuffer;
	fvec_t* fvecAudioBuffer;
	int bufferSize;
};
