//
//  NSObject+runtime.m
//  037-- Runtime获取对象的属性数组
//
//  Created by 顾雪飞 on 16/12/22.
//  Copyright © 2016年 顾雪飞. All rights reserved.
//

#import "NSObject+runtime.h"
#import <objc/runtime.h>

@implementation NSObject (runtime)

+ (instancetype)gxf_objectWithDictionary:(NSDictionary *)dict {
    
    id object = [[self alloc] init];
    
    NSArray *array = [self gxf_getProperties];
    
    // 遍历字典，设置数值
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        if ([array containsObject:key]) {
            
            [object setValue:obj forKey:key];
        }
        
    }];
    
    return object;
}

+ (NSArray *)gxf_getProperties {
    
    unsigned int count = 0;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    
//    NSLog(@"%d", count);
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for (unsigned int i = 0; i < count; i++) {
        
        objc_property_t pty = properties[i];
        
        const char *Cname = property_getName(pty);
        NSString *name = [NSString stringWithCString:Cname encoding:NSUTF8StringEncoding];
//        NSLog(@"%@", name);
        [arrayM addObject:name];
    }
    
    free(properties);
    
    return arrayM.copy;
}

@end
