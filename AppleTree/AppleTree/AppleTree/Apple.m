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
    self = [super init];
    if (self) {
        _color = theColor;
        _numberOfSeeds = arc4random_uniform(10);
        _sortName = theSort;
        _isFallen = false;
        _percentageOfMaturation = 5;
    }
    return self;
}

- (id) init {
    return [self initWithSort:arc4random_uniform(sizeof(AppleSort)) Color:arc4random_uniform(sizeof(Color))];
}

- (void) mature {
    if(arc4random_uniform(2)==1){
    _numberOfSeeds += 1;
    }
    _percentageOfMaturation += arc4random_uniform(100 - self.percentageOfMaturation);
    if(self.percentageOfMaturation == 100)
        self.isFallen = true;
}

- (void) fallDown  {
    self.isFallen = true;
}
@end