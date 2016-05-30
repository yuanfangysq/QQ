//
//  jichengconntroller.m
//  WeChatDemo
//
//  Created by ysq on 5/30/16.
//  Copyright © 2016 github.com/yuanfangysq. All rights reserved.
//

#import "jichengconntroller.h"

@implementation jichengconntroller
- (void)viewDidLoad
{
    [super viewDidLoad];
    //    bar.hidden=YES;
    
    
    CGFloat rgb = 0.1;
    self.navigationBar.barTintColor = [UIColor colorWithRed:rgb green:rgb blue:rgb alpha:0.9];
   self.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [viewController.navigationItem.backBarButtonItem setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:10]} forState:UIControlStateNormal];
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:YES];
}

@end
