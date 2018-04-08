//
//  test.m
//  viewOfSubViewOutBoundsRespose
//
//  Created by shan on 2017/2/28.
//  Copyright © 2017年 hoge. All rights reserved.
//
//只要是加在此view上的button  不管是否超出视图都能响应事件；且此View 不会阻挡事件的传递，即使把此View加入UIBtton上面，UIBtton还会响应事件
// 注意：使用此View时中间不要使用UIView 否则会出现不响应的问题

#import "test.h"

@implementation test

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    NSArray *subViewArray = [self subviews];
    for (UIView *subView in subViewArray ) {
        CGPoint buttonPoint = [subView convertPoint:point fromView:self];
        if ([subView isKindOfClass:[UIView class]]) {
            UIView *ss=  [subView hitTest:buttonPoint withEvent:event];
            if (!ss) {
                continue;
            }
            return ss;
        }else{
            if ([subView pointInside:buttonPoint withEvent:event]){
                return subView;
            }
        }
    }
    return nil;

}



@end
