//
//  NSArray+BlockMethods.h
//  arrayBlocks
//
//  Created by Yoseob Lee on 7/7/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (BlockMethods)

-(void)mapWithBlock:(void (^)(id obj))blockName;

-(NSArray *)selectWithBlock:(BOOL (^)(id obj))evenNumberReturner;

@end
