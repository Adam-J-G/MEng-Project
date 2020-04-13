/***** HarmonyCalculator.h *****/

#include <math.h>

class HarmonyCalculator {
public:
	void setKeySig(int key);
	void setInputValues(float currentF0, float currentThereminVal);
	int getNoteIn();
	int getFirstHarmonyNote();
	int getSecondHarmonyNote();
	int getThirdHarmonyNote();
	float getFirstHarmonyShift();
	float getSecondHarmonyShift();
	float getThirdHarmonyShift();
	
private:
	int getNoteInScaleIndex(int note);

	int keySig = 0;
	int scale[7] = { 0, 2, 4, 5, 7, 9, 11 };
	float interval = 0.0f;
	float prevThereminVal = 0.0f;
	
	int noteIn = 0;
	int firstHarmonyNote = 0;
	int secondHarmonyNote = 0;
	int thirdHarmonyNote = 0;
	float firstHarmonyShift = 0.0f;
	float secondHarmonyShift = 0.0f;
	float thirdHarmonyShift = 0.0f;
};
