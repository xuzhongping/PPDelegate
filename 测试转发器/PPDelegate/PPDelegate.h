//
//  PPDelegate.h
//  转发器
//
//  Created by xuzhongping on 2016/12/7.
//  Copyright © 2016年 xuzhongping. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PPDelegate : NSObject


+ (instancetype)shareDelegate;

- (void)addDelegates:(NSArray *)delegates forTarget:(id)target;

@end
