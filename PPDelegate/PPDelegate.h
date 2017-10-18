//
//  PPDelegate.h
//  转发器
//
//  Created by xuzhongping on 2016/12/7.
//  Copyright © 2016年 xuzhongping. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PPDelegate : NSProxy


+ (instancetype)delegate;

/**
 add multiple delegate for instance

 @param delegates observer array
 @param target    by the instance
 */
- (void)addDelegates:(NSArray *)delegates forTarget:(id)target;

/**
  add multiple delegate for instance

 @param delegates observer array
 @param target    by the instance
 @param property  custom 'delegate' property
 */
- (void)addDelegates:(NSArray *)delegates forTarget:(id)target customDelegateProperty:(NSString *)property;

@end
