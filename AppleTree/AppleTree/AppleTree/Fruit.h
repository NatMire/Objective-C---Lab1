//
//  Fruit.h
//  AppleTree
//
//  Created by fpmi on 25.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommonData.h"

@interface Fruit: NSObject

@property int numberOfSeeds;
@property int percentageOfMaturation;
@property bool isFallen;
@property Color color;

- (id) initWithColor : (Color) theColor;
- (id) init;
- (void) showDetails;
- (void) mature;
- (void) fallDown;
@end