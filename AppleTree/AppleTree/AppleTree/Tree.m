//
//  Tree.m
//  AppleTree
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tree.h"
#import "Apple.h"

@implementation Tree

- (id) init {
    return [self initWithHeight: arc4random_uniform(200) Sort:arc4random_uniform(sizeof(AppleSort))];
}

-(id)initWithHeight:(int)theHeight Sort:(AppleSort) theSortName{
    self = [super init];
    if(self) {
        _height = theHeight;
        _sortName = theSortName;
        _apples = [NSMutableArray array];
    }    
    return self;
}

-(void) growForHeight:(int)theHeight {
    NSLog(@"Growing...");
    self.height += theHeight;
    if(arc4random_uniform(3)==1){
        [self.apples addObject:[[Apple alloc] init]]];
    }
    for (Apple *apple in self.apples) {
        if(!apple.isFallen) {
            [apple mature];
        }
    }
}

-(void)shake {
    NSLog(@"Shaking...");
    for (Apple *apple in self.apples) {
        if(!apple.isFallen && arc4random_uniform(3)==1) {
            [apple fallDown];
        }
    }
}

-(void) showDetails {
    NSLog(@"\n\n\n height: %d, name of sort: %d, apples details: \n\n", self.height, self.sortName);
    for (Apple *apple in self.apples) {
        [apple showDetails];
    }
}
@end
