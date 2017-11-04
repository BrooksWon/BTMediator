
//
//  ViewControllerB.m
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import "ViewControllerB.h"
#import "BTMediator+ModuleCActions.h"

@interface ViewControllerB ()

@end

@implementation ViewControllerB
- (IBAction)btnAction:(id)sender {
    UIViewController *vc = [[BTMediator sharedInstance]BTMediator_nativeFetchViewControllerForBookTops];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = [NSString stringWithFormat:@"%@的书评", self.bookName];
    
    if (self.aBlock) {
        NSString* resultString = self.aBlock(@"block 调用成功", @"200");
        NSLog(@"resultString = %@", resultString);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
