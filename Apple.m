#import <Foundation/Foundation.h>
#import «Apple.h»
@implementation Apple
+ newApple {
Apple * apple = [[Apple alloc] init];
[apple setWeight: 1.0f];
[apple setPercentageOMaturation: 1.0f];
[apple setColor: brownColor];
}
— (void) grow { 
[apple setWeight: [getWeight] + 1.0f];
[apple setPercentageOMaturation: [getWeight] + 1.0f];
[apple setColor: greenColor];
}
— (float) getWeight { return weight; }
— (float) getPercentageOfMaturation { return percentageOfMaturation; }
— (NSColor) getColor { return color; }
— (void) setWeight: (float) theWeight { weight = theWeight; }
— (void) setPercentageOfMaturation: (float) thePercentageOfMaturation { percentageOfMaturation = thePercentageOfMaturation; }
— (void) setColor: (NSColor) theColor { color = theColor;}
@end 
