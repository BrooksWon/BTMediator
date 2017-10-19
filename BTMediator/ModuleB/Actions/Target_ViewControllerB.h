//
//  Target_ViewControllerB.h
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_ViewControllerB : NSObject

/** 根据输入参数返回ViewControllerB 对象
 *
 *  @param params 包含两个键值对，key为bookName（必传）。这俩参数名字属于hard code
 *              如：{
 *                      "bookName": "批判性思维"
 *                  }
 *
 *  @return ViewControllerB 对象
 */
- (UIViewController *)Action_nativeFetchViewControllerForBookComments:(NSDictionary *)params;


@end
