//
//  Target_ViewControllerA.m
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import "Target_ViewControllerA.h"
#import "ViewControllerA.h"

@implementation Target_ViewControllerA


/** 根据输入参数返回ViewControllerA 对象
 *
 *  @param params 包含两个键值对，key1为bookName（必传）， key2为language（可以为空）。这俩参数名字属于hard code
 *              如：{
 *                      "bookName": "批判性思维",
 *                      "language": "英文"
 *                  }
 *
 *  @return ViewControllerA 对象
 */
- (UIViewController *)Action_nativeFetchViewControllerForBookList:(NSDictionary *)params
{
    ViewControllerA * vcA = [[ViewControllerA alloc] init];
    vcA.bookName = params[@"bookName"];
    vcA.Language = params[@"language"];
    
    return vcA;
}


@end
