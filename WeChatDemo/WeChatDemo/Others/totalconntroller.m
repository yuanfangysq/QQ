//
//  totalconntroller.m
//  WeChatDemo
//
//  Created by ysq on 5/30/16.
//  Copyright © 2016 github.com/yuanfangysq. All rights reserved.
//

#import "totalconntroller.h"
#import "wechatConntroller.h"
#import "addressController.h"
#import "DiscoverConntroller.h"
#import "MeConntroller.h"
#import "jichengconntroller.h"
@implementation totalconntroller
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupChildControllers];
}

- (void)setupChildControllers
{
    [self setupChildNavigationControllerWithClass:[jichengconntroller class] tabBarImageName:@"tabbar_mainframe" rootViewControllerClass:[wechatConntroller class] rootViewControllerTitle:@"微信"];
   
    [self setupChildNavigationControllerWithClass:[jichengconntroller class] tabBarImageName:@"tabbar_contacts" rootViewControllerClass:[addressController class] rootViewControllerTitle:@"通讯录"];
    
    [self setupChildNavigationControllerWithClass:[jichengconntroller class] tabBarImageName:@"tabbar_discover" rootViewControllerClass:[DiscoverConntroller class] rootViewControllerTitle:@"发现"];

    [self setupChildNavigationControllerWithClass:[jichengconntroller class] tabBarImageName:@"tabbar_me" rootViewControllerClass:[MeConntroller class] rootViewControllerTitle:@"我"];
    
}

- (void)setupChildNavigationControllerWithClass:(Class)class tabBarImageName:(NSString *)name rootViewControllerClass:(Class)rootViewControllerClass rootViewControllerTitle:(NSString *)title
{
    UIViewController *rootVC = [[rootViewControllerClass alloc] init];
    rootVC.title = title;
    UINavigationController *navVc = [[class  alloc] initWithRootViewController:rootVC];
    navVc.tabBarItem.image = [UIImage imageNamed:name];
    navVc.tabBarItem.selectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@HL", name]];
    
    [self addChildViewController:navVc];
}

@end
