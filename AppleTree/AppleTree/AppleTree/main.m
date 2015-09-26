//
//  main.m
//  AppleTree
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tree.h"
#import "Apple.h"
#import "Basket.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
         /*Tree *tree = [[Tree alloc] init];
         for(int i = 0; i < 15; i++) {
          
              [tree growForHeight: arc4random_uniform(40)];
              [tree showDetails];
              [tree shake];
              [tree showDetails];
         }*/
        
         Basket *basket = [[Basket alloc] init];
         for(int i = 0; i < 10; ++i) {
         [basket addFruit:[[Apple alloc] init]];
         }
         
         /*[basket printContent];*/
         
         id<Iterator> iterator = [basket getIterator];
         while ([iterator hasNext]) {
             Apple *currApple = (Apple *) [iterator next];
             [currApple showDetails];
         }
    }
    return 0;
}
