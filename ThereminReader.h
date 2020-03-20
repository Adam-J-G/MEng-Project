/***** ThereminReader.h *****/

#include <Bela.h>
#include <libraries/PulseIn/PulseIn.h>

class ThereminReader {
public:
	void init(BelaContext *context);
	float readPitch(BelaContext *context);
	float readMix(BelaContext *context);
	
private:
	PulseIn pitchPulseIn;
	PulseIn mixPulseIn;
	
	int minPulseLength = 7; //to avoid spurious readings
	int maxPulseLength = 100; //to avoid spurious readings
	float rescaleVal = 58; // taken from the datasheet
	
	unsigned int pitchTriggerDigitalOutPin = 0; //channel to be connected to the module's TRIGGER pin
	unsigned int pitchEchoDigitalInPin = 1; //channel to be connected to the modules's ECHO pin
	unsigned int mixTriggerDigitalOutPin = 2; //channel to be connected to the module's TRIGGER pin
	unsigned int mixEchoDigitalInPin = 3; //channel to be connected to the modules's ECHO pin
};
