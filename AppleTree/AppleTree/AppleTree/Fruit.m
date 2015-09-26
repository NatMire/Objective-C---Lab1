//
//  Fruit.m
//  AppleTree
//
//  Created by fpmi on 25.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

@implementation Fruit

-(void) showDetails {
    NSLog(@"number of seeds: %d, color: %d, percent of Maturation: %d, is fallen: %d \n", self.numberOfSeeds, self.color, self.percentageOfMaturation, self.isFallen);
}

- (id) initWithColor : (Color) theColor {
    self = [super init];
    if (self) {
        _color = theColor;
        _numberOfSeeds = arc4random_uniform(10);
        _isFallen = false;
        _percentageOfMaturation = 5;
    }
    return self;
}

- (id) init {
    return [self initWithColor:arc4random_uniform(sizeof(Color))];
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