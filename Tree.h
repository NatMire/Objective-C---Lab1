#import <Foundation/Foundation.h>
@interface Tree: NSObject
{
	float height;
	NSMutableArray  * apples;
}
+ newApple;
- newTree;
— (void) grow;
— (void) shake;
— (float) getHeight;
— (NSMutableArray) getApples;
— (void) setHeight: (float) theHeight;
— (void) setApples: (NSMutableArray) theApples;
@end
