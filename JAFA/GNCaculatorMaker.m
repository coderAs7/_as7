//
//  GNCaculatorMaker.m
//  JAFA
//
//  Created by ccd on 16/5/3.
//  Copyright © 2016年 ccd. All rights reserved.
//

#import "GNCaculatorMaker.h"

@implementation GNCaculatorMaker

// 加法实现
- (GNCaculatorMaker *(^)(NSInteger))add{
    
    return ^GNCaculatorMaker *(NSInteger num){
        
        _result += num;
        
        return self;
    };
}

// 减法实现
- (GNCaculatorMaker *(^)(NSInteger))sub{
    
    return ^GNCaculatorMaker *(NSInteger num){
        
        _result -= num;
        
        return self;
    };
}

// 提供给外界直接使用的方法.方便快捷的创建计算器对象,并且进行计算.
+ (NSInteger)makeCaculate:(void (^)(GNCaculatorMaker *))block{
    
    if (block) {
        // 创建计算器对象
        GNCaculatorMaker *maker = [[GNCaculatorMaker alloc]init];
        // 调用block,并且把计算器对象传入,以供外界使用.
        block(maker);
        // 返回最终结果
        return maker.result;
    }
    return 0;
}

@end
