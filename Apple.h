#import <Foundation/Foundation.h>
@interface Apple: NSObject
{
	float weight;
	float percentageOfMaturation;
	NSColor * color;
}
+ newApple;
— (void) grow;
— (float) getWeight;
— (float) getPercentageOfMaturation;
— (NSColor) getColor;
— (void) setWeight: (float) theWeight;
— (void) setPercentageOMaturation: (float) thePercentageOfMaturation;
— (void) setColor: (NSColor) theColor;
@end
