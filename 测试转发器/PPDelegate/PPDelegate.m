//
//  PPDelegate.m
//  转发器
//
//  Created by xuzhongping on 2016/12/7.
//  Copyright © 2016年 xuzhongping. All rights reserved.
//

#import "PPDelegate.h"
#import <objc/message.h>

@interface PPDelegate ()

@property (nonatomic,strong)NSArray *delegates;

@property (nonatomic,strong)id target;

@end

@implementation PPDelegate

static id _instace;

+ (id)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instace = [super allocWithZone:zone]; 
    }); 
    return _instace; 
} 

+ (instancetype)shareDelegate
{ 
    static dispatch_once_t onceToken; 
    dispatch_once(&onceToken, ^{ 
        _instace = [[self alloc] init]; 
    }); 
    return _instace; 
} 

- (id)copyWithZone:(NSZone *)zone 
{ 
    return _instace; 
}


- (void)addDelegates:(NSArray *)delegates forTarget:(id)target{
    self.delegates = delegates;
    
    if ([self checkoutHasIvar:target]) return;
        [self checkoutProperty:target];
    
}

- (BOOL)checkoutHasIvar:(id)target{
    unsigned int count = 0;
    Ivar *ivarList = class_copyIvarList([target class], &count);
    
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivarList[i];
        NSString *ivarName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        if ([ivarName hasSuffix:@"delegate"]) {
            [target setValue:self forKey:ivarName];
            return YES;
        }
    }
    return NO;
}

- (void)checkoutProperty:(id)target{
     unsigned int count = 0;
       objc_property_t *propertyList = class_copyPropertyList([target class], &count);
    
        for (int i = 0; i < count; i++) {
            objc_property_t property = propertyList[i];
            NSString *propertyName = [NSString stringWithUTF8String:property_getName(property)];
            if ([propertyName hasSuffix:@"delegate"]) {
                [target setValue:self forKey:propertyName];
    
            }
        }
}

- (BOOL)respondsToSelector:(SEL)aSelector{
    for (id obj in _delegates) {
        if (![obj respondsToSelector:aSelector]) {
            return NO;
        }
    }
    return YES;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    for (id obj in _delegates) {
        [anInvocation invokeWithTarget:obj];
    }
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    for (id obj in _delegates) {
      return  [obj methodSignatureForSelector:aSelector];
    }
    return nil;
}

@end
