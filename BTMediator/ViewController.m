//
//  ViewController.m
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import "ViewController.h"

//调度方只需要引入对应的分类即可完成调度
#import "BTMediator+ModuleAActions.h"
#import "BTMediator+ModuleBActions.h"
#import "BTMediator+ModuleCActions.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)btnAClicked:(id)sender {
    // 调度时，给组件需要的参数即可
    UIViewController *vc = [[BTMediator sharedInstance] BTMediator_nativeFetchViewControllerForBookList:@"马列主义经典著作" withLanguage:@"英文"];
    
    [self.navigationController pushViewController:vc animated:YES];
    
}
- (IBAction)btnBClicked:(id)sender {
    
    // 调度时，给组件需要的参数即可
    //UIViewController *vc = [[BTMediator sharedInstance] BTMediator_nativeFetchViewControllerForBookComments:@"马列主义经典著作"];
    UIViewController *vc = [[BTMediator sharedInstance] BTMediator_nativeFetchViewControllerForBookComments:@"马列主义经典著作" withBlock:^NSString *(NSString *status, NSString *code) {
        NSLog(@"status=%@", status);
        NSLog(@"code=%@", code);
        return @"block 返回信息";
    }];
    
    [self.navigationController pushViewController:vc animated:YES];
    
}
- (IBAction)btnCClicked:(id)sender {
    // 调度时，给组件需要的参数即可
    UIViewController *vc = [[BTMediator sharedInstance] BTMediator_nativeFetchViewControllerForBookTops];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
