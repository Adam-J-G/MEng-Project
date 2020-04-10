/***** Reverberator.h *****/

#include <stk/FreeVerb.h>

class Reverberator {
public:
	void init(int sampleRate);
	float applyReverb(float frame);
	void setMix(float mix);
	
private:
	stk::FreeVerb reverb;
};
