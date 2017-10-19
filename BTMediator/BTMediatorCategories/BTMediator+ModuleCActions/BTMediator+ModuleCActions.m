//
//  BTMediator+ModuleCActions.m
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import "BTMediator+ModuleCActions.h"

NSString * const kBTMediatorViewControllerC = @"ViewControllerC";
NSString * const kCTMediatorActionNativeFetchViewControllerForBookTops = @"nativeFetchViewControllerForBookTops";

@implementation BTMediator (ModuleCActions)

- (UIViewController *)BTMediator_nativeFetchViewControllerForBookTops
{
    UIViewController *viewController = [self performTarget:kBTMediatorViewControllerC
                                                    action:kCTMediatorActionNativeFetchViewControllerForBookTops
                                                    params:nil
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
