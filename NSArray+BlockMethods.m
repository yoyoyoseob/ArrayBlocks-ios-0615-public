//
//  NSArray+BlockMethods.m
//  arrayBlocks
//
//  Created by Yoseob Lee on 7/7/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "NSArray+BlockMethods.h"

@implementation NSArray (BlockMethods)

-(void)mapWithBlock:(void (^)(id))blockName
{
    for (NSUInteger i = 0; i < self.count; i++)
    {
        blockName(self[i]);
    }
}

-(NSArray *)selectWithBlock:(BOOL (^)(id))evenNumberReturner
{
    NSMutableArray *filteredArray = [NSMutableArray new];
    
    for (id obj in self)
    {
        BOOL passes = evenNumberReturner(obj);
        if (passes)
        {
            [filteredArray addObject:obj];
        }
    }
    return filteredArray;
}

@end
