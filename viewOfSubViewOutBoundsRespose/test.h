//
//  test.h
//  viewOfSubViewOutBoundsRespose
//
//  Created by shan on 2017/2/28.
//  Copyright © 2017年 hoge. All rights reserved.
//只要是加在此view上的button  不管是否超出视图都能响应事件；且此View 不会阻挡事件的传递，即使把此View加入UIBtton上面，UIBtton还会响应事件
// 注意：使用此View时中间不要使用UIView 否则会出现不响应的问题

#import <UIKit/UIKit.h>

@interface test : UIView

@end
