//
//  Basket.h
//  AppleTree
//
//  Created by fpmi on 25.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"
#import "BasketIterator.h"
#import "Fruit.h"

@interface Basket : NSObject

-(id)initWithFruits:(NSMutableArray *)basket;
-(id)init;
-(id<Iterator>)getIterator;
-(void)addFruit:(Fruit *)fruit;
-(void)deleteFruit:(Fruit *)fruit;
-(void)printContent;
@end
