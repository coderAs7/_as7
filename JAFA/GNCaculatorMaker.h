//
//  GNCaculatorMaker.h
//  JAFA
//
//  Created by ccd on 16/5/3.
//  Copyright © 2016年 ccd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GNCaculatorMaker : NSObject

@property (nonatomic,assign) NSInteger result;

// 提供外界快速创建加法计算器对象并且使用的方法
// 参数是一个带参数的block,block的参数是创建的计算器对象
// 这个方法应该写在本类的分类中
+ (NSInteger)makeCaculate:(void(^)(GNCaculatorMaker *))block;

// 以下方法返回值是一个带返回值的block
// block的返回值是self
// 加
- (GNCaculatorMaker *(^)(NSInteger))add;
// 减
- (GNCaculatorMaker *(^)(NSInteger))sub;

@end
