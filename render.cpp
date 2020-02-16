#include <Bela.h>

bool setup(BelaContext *context, void *userData)
{
	return true;
}

void render(BelaContext *context, void *userData)
{
	for(unsigned int frame = 0; frame < context->audioFrames; frame++) {
		float out_l = 0;
		float out_r = 0;
		
		// Read audio inputs
		out_l = audioRead(context, frame, 0);
		out_r = audioRead(context, frame, 1);
		
		// Write the sample into the output buffer
		audioWrite(context, frame, 0, out_l);
		audioWrite(context, frame, 1, out_r);
	}
}

void cleanup(BelaContext *context, void *userData)
{

}