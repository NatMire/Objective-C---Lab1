//
//  Apple.h
//  AppleTree
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommonData.h"

@interface Apple: NSObject

@property int numberOfSeeds;
@property AppleSort sortName;
@property int percentageOfMaturation;
@property bool isFallen;
@property Color color;

- (id) initWithSort: (AppleSort) theSort Color : (Color) theColor;
- (id) init;
- (void) showDetails;
- (void) mature;
- (void) fallDown;
@end