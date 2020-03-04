/***** PitchTracker.h *****/

#include <aubio/aubio.h>
#include <vector>
#define MAX_FREQUENCY 4000

class PitchTracker {
public:
	void init(char* pitch_method, int buffer_size, int hop_size, int samplerate);
	int getPitch(std::vector<float> &audioBuffer);
	
private:
	aubio_pitch_t *pitchDetector;
	fvec_t *pitchBuffer;
};
