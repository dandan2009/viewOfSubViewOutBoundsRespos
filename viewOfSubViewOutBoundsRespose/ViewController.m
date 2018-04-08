//
//  ViewController.m
//  viewOfSubViewOutBoundsRespose
//
//  Created by shan on 2017/2/28.
//  Copyright © 2017年 hoge. All rights reserved.
////此demo 虽然绿色的btn超出了父视图但是 还可以接受点击事件

#import "ViewController.h"
#import "test.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UIView *bView1 = [[test alloc] initWithFrame:CGRectMake(10, 10, 200, 200)];
    bView1.tag = 100;
    [self.view addSubview:bView1];
    bView1.backgroundColor = [UIColor blueColor];
    
    
    
    UIView *bView = [[test alloc] initWithFrame:CGRectMake(90, 90, 200, 200)];
    bView.tag = 101;
    [bView1 addSubview:bView];
    bView.backgroundColor = [UIColor redColor];
    
    
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.tag = 102;
    btn.frame = CGRectMake(20, 90, 200, 200);
    btn.backgroundColor = [UIColor greenColor];
    
    [bView addSubview:btn];
    
    [btn addTarget:self action:@selector(ff) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
//    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(90, 90, 90, 90)];
//    lab.backgroundColor = [UIColor redColor];
//    lab.text = @"456";
//    [self.view addSubview:lab];
//    
//    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(90, 190, 90, 90)];
//    btn2.backgroundColor = [UIColor orangeColor];
//    [btn2 setTitle:@"567" forState:UIControlStateNormal];
//    [self.view addSubview:btn2];
//    
//    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(90, 300, 90, 90)];
//    textView.backgroundColor = [UIColor orangeColor];
//    textView.text = @"567";
//    [self.view addSubview:textView];
    
    
}

- (void)ff{
    NSLog(@"jjjjjjjj");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
