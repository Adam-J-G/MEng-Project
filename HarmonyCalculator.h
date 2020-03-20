/***** HarmonyCalculator.h *****/

#include <math.h>
#include <math_neon.h>

class HarmonyCalculator {
public:
	void setKeySig(int keySig);
	void setInputValues(float currentF0, float currentThereminVal);
	int getNoteInScaleIndex(float note);
	float getFirstHarmony();
	float getSecondHarmony();
	float getThirdHarmony();
	
private:
	float keySig = 0.0f;
	float scale[7] = { 0.0f, 2.0f, 4.0f, 5.0f, 7.0f, 9.0f, 11.0f };
	float interval = 0.0f;
	float prevThereminVal = 0.0f;
	
	float firstHarmony = 0.0f;
	float secondHarmony = 0.0f;
	float thirdHarmony = 0.0f;
};
