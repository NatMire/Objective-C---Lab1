//
//  Apple.m
//  AppleTree
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apple.h"

@implementation Apple

-(void) showDetails {
    NSLog(@"number of seeds: %d, name of sort: %d, color: %d, percent of Maturation: %d, is fallen: %d \n", self.numberOfSeeds, self.sortName, self.color, self.percentageOfMaturation, self.isFallen);
}

- (id) initWithSort: (AppleSort) theSort Color : (Color) theColor {
    self = [super initWithColor: theColor];
    if (self) {
        _sortName = theSort;
    }
    return self;
}

- (id) init {
    return [self initWithSort:arc4random_uniform(sizeof(AppleSort)) Color:arc4random_uniform(sizeof(Color))];
}
@end
