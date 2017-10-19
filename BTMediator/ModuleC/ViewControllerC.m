

//
//  ViewControllerC.m
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import "ViewControllerC.h"
#import "BTMediator+ModuleAActions.h"

@interface ViewControllerC ()

@end

@implementation ViewControllerC
- (IBAction)btnAction:(id)sender {
    UIViewController *vc = [[BTMediator sharedInstance] BTMediator_nativeFetchViewControllerForBookList:@"未来简史" withLanguage:@"中文"];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = [NSString stringWithFormat:@"畅销书排行榜"];

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
