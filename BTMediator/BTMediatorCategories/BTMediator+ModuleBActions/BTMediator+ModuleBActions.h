//
//  BTMediator+ModuleBActions.h
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import "BTMediator.h"
#import <UIKit/UIKit.h>

@interface BTMediator (ModuleBActions)

//- (UIViewController *)BTMediator_nativeFetchViewControllerForBookComments:(NSString *)bookName;

- (UIViewController *)BTMediator_nativeFetchViewControllerForBookComments:(NSString *)bookName withBlock:(NSString* (^)(NSString *status, NSString *code))block;

@end
