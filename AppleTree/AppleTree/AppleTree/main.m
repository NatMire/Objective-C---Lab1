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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
         Tree *tree = [[Tree alloc] init];
         for(int i = 0; i < 15; i++) {
              [tree growForHeight: arc4random_uniform(40)];
              [tree showDetails];
              [tree shake: arc4random_uniform(40)];
              [tree showDetails];
         }
    }
    return 0;
}
