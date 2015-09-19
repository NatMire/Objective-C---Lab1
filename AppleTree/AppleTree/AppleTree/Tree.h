//
//  Tree.h
//  AppleTree
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Apple.h"
#import "CommonData.h"

@interface Tree: NSObject

@property int height;
@property AppleSort sortName;
@property (copy) NSMutableArray  * apples;

- (id) init;
- (id) initWithHeight: (int) theHeight Sort:(AppleSort) theSortName;
- (void) growForHeight: (int) theHeight;
- (void) shake;
- (void) showDetails;
@end
