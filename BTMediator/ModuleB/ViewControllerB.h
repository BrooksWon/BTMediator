//
//  ViewControllerB.h
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerB : UIViewController

@property (nonatomic,copy) NSString *bookName;
@property (nonatomic,copy) NSString* (^aBlock)(NSString *, NSString *);


@end
