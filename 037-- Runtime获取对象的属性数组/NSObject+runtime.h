//
//  NSObject+runtime.h
//  037-- Runtime获取对象的属性数组
//
//  Created by 顾雪飞 on 16/12/22.
//  Copyright © 2016年 顾雪飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (runtime)

+ (instancetype)gxf_objectWithDictionary:(NSDictionary *)dict;
+ (NSArray *)gxf_getProperties;

@end
