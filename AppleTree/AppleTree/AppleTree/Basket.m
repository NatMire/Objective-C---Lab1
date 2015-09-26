//
//  Basket.m
//  AppleTree
//
//  Created by fpmi on 25.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Basket.h"

@implementation Basket {
    NSMutableArray *basket;
}

-(id)initWithBasket:(NSMutableArray *)basket {
    self = [super init];
    if (self) {
        self->basket = basket;
    }
    return self;
}

-(id)init {
    return [self initWithBasket:[[NSMutableArray alloc] init]];
    
}

-(id<Iterator>)getIterator {
    id<Iterator> iterator = [[BasketIterator alloc] initWithBasket:basket];
    return iterator;
}
-(void)addFruit:(Fruit *)fruit {
    [basket addObject:fruit];
}

-(void) printContent {
    NSLog(@"Basket contains %lu fruits", (unsigned long)[basket count]);
    NSLog(@"Items: ");
    int itemNumber = 1;
    for (Fruit *f in basket) {
        printf("\n");
        NSLog(@"Fruit #%d", itemNumber++);
        [f showDetails];
    }
}
@end