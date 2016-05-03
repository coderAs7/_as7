//
//  ViewController.m
//  JAFA
//
//  Created by ccd on 16/5/3.
//  Copyright © 2016年 ccd. All rights reserved.
//

#import "ViewController.h"
#import "GNCaculatorMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSInteger result = [GNCaculatorMaker makeCaculate:^(GNCaculatorMaker *maker) {

        // 调用add方法以后,返回值是一个block. maker.add 此时相当于一个block  即 maker.add 相当于 block
        // 于是在直接调用这个block maker.add(10) 相当于 oneBlock(10)
        // 由于block的返回值是一个计算器对象,所以可以继续调用计算器的其他方法.
        maker.add(10).sub(10).add(10);
        
    }];
    
    NSLog(@"%zd",result);
    // 结果为10;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
