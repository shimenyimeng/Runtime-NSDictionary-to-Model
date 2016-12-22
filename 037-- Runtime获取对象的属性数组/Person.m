//
//  Person.m
//  037-- Runtime获取对象的属性数组
//
//  Created by 顾雪飞 on 16/12/22.
//  Copyright © 2016年 顾雪飞. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)description {
    
    return [self dictionaryWithValuesForKeys:@[@"name", @"age", @"height"]].description;
}

@end
