//
//  Apple.h
//  AppleTree
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommonData.h"
#import "Fruit.h"

@interface Apple : Fruit

@property AppleSort sortName;

- (id) initWithSort: (AppleSort) theSort Color : (Color) theColor;
- (id) init;
- (void) showDetails;
@end