//
//  Iterator.h
//  AppleTree
//
//  Created by fpmi on 25.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Iterator <NSObject>

-(bool)hasNext;
-(NSObject *)next;
@end
