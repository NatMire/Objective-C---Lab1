#import <Foundation/Foundation.h>
#import Tree.h»
@implementation Tree
+ newTree {
Tree * tree = [[Tree alloc] init];
[tree setHeight: 1.0f];
[tree setApples: nil];
}
- newApple {
[tree setApples[apples addObject: [Apple newApple]]];
}
— (void) grow { 
[apple setHeight: [getHeight] + 10.0f];
for (apple in apples)
[apple grow]
[apple setApples: apples];
}
— (float) getHeight { return height; }
— (NSMutableArray) getApples { return apples; }
— (void) setHeight: (float) theHeight { height = theHeight; }
— (void) setApples: (NSMutableArray) theApples { apples = theApples;}
@end
