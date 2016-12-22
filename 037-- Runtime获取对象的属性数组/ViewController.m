//
//  ViewController.m
//  037-- Runtime获取对象的属性数组
//
//  Created by 顾雪飞 on 16/12/22.
//  Copyright © 2016年 顾雪飞. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+runtime.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Person gxf_getProperties];
    
    Person *person = [Person gxf_objectWithDictionary:@{@"name" : @"guxuefei", @"age" : @25, @"height" : @173, @"hh" : @"hahaha"}];
    
    NSLog(@"%@", person);
}


@end
