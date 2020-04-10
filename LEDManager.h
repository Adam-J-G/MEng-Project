/***** LEDManager.h *****/

#include <Bela.h>

#define NUM_LEDS 12
#define MIN_LED_PIN 4
#define MAX_LED_PIN 15

class LEDManager {
public:
	void init(BelaContext *context);
	void updateNotes(BelaContext* context, int numHarmonies, int note1, int note2, int note3, int note4);
	void clearNotes(BelaContext* context);
private:
	int getLEDPin(int note);
};
