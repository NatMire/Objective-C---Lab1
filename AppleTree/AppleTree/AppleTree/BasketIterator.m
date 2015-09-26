//
//  BasketIterator.m
//  AppleTree
//
//  Created by fpmi on 25.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BasketIterator.h"

@implementation BasketIterator {
    NSMutableArray *basket;
    int leftItem;
    int rightItem;
    int itemCount;
    int overviewedItemsCount;
}

-(id)initWithBasket:(NSMutableArray *)basket {
    self = [super init];
    if (self) {
        self->basket = basket;
        itemCount = [basket count];
        leftItem = 0;
        rightItem = itemCount - 1;
        overviewedItemsCount = 0;
    }
    
    return self;
}

-(bool)hasNext {
    return (itemCount - overviewedItemsCount) > 0;
}

-(NSObject *)next {
    Fruit *currentFruit = nil;
    if (overviewedItemsCount % 2 == 0) {
        currentFruit = basket[leftItem++];
    } else {
        currentFruit = basket[rightItem--];
    }
    
    ++overviewedItemsCount;
    return currentFruit;
}

@end
