//
//  Target_ViewControllerC.h
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_ViewControllerC : NSObject

#warning 当target 无输入参数被调度时，永远创建不了改VC，因为中介者里面的规则默认是有一个NSDictionary参数的：如源码：    NSString *actionString = [NSString stringWithFormat:@"Action_%@:", actionName];

- (UIViewController *)Action_nativeFetchViewControllerForBookTops;

- (UIViewController *)Action_nativeFetchViewControllerForBookTops:(NSDictionary *)params;

@end
