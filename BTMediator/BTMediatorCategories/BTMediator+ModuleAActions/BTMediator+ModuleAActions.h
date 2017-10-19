//
//  BTMediator+ModuleAActions.h
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import "BTMediator.h"
#import <UIKit/UIKit.h>

@interface BTMediator (ModuleAActions)

- (UIViewController *)BTMediator_nativeFetchViewControllerForBookList:(NSString *)bookName
                                                         withLanguage:(NSString *)language;

@end
