//
//  BTMediator+ModuleBActions.m
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import "BTMediator+ModuleBActions.h"

NSString * const kBTMediatorViewControllerB = @"ViewControllerB";
NSString * const kCTMediatorActionNativeFetchViewControllerForBookComments = @"nativeFetchViewControllerForBookComments";

@implementation BTMediator (ModuleBActions)

- (UIViewController *)BTMediator_nativeFetchViewControllerForBookComments:(NSString *)bookName
{
    UIViewController *viewController = [self performTarget:kBTMediatorViewControllerB
                                                    action:kCTMediatorActionNativeFetchViewControllerForBookComments
                                    /*
                                     params 里的参数名字是 业务方面 or 组件方提供的。属于hard code
                                     **/
                                                    params:@{@"bookName":bookName}
                                         shouldCacheTarget:NO];
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}


@end
