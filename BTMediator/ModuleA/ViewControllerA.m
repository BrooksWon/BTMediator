//
//  ViewControllerA.m
//  BTMediator
//
//  Created by Brooks on 2017/10/16.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import "ViewControllerA.h"
#import "BTMediator+ModuleBActions.h"

@interface ViewControllerA ()

@end

@implementation ViewControllerA
- (IBAction)btnAction:(id)sender {
    UIViewController *vc = [[BTMediator sharedInstance] BTMediator_nativeFetchViewControllerForBookComments:self.bookName];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = [NSString stringWithFormat:@"%@（%@）", self.bookName, self.Language];
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
