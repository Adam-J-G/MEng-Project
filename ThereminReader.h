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
	int maxPulseLength = 1000; //to avoid spurious readings
	float rescaleVal = 58; // taken from the datasheet
	int triggerInterval = 2646; // how often to send out a trigger. 2646 samples are 60ms
	int pitchTriggerCount = 0;
	
	unsigned int pitchTriggerDigitalOutPin = 0; //channel to be connected to the module's TRIGGER pin
	unsigned int pitchEchoDigitalInPin = 1; //channel to be connected to the modules's ECHO pin
	unsigned int mixTriggerDigitalOutPin = 2; //channel to be connected to the module's TRIGGER pin
	unsigned int mixEchoDigitalInPin = 3; //channel to be connected to the modules's ECHO pin
};
