//
//  TodayViewController.m
//  quickSettings
//
//  Created by wantry on 14-9-25.
//  Copyright (c) 2014年 wantry. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:[self buttonImageName:@"cellular" action:@selector(btn_quickData:) index:0]];
    [self.view addSubview:[self buttonImageName:@"location" action:@selector(btn_quickLocation:) index:1]];
    [self.view addSubview:[self buttonImageName:@"hotpoint" action:@selector(btn_quickHotPoint:) index:2]];
    [self.view addSubview:[self buttonImageName:@"vpn" action:@selector(btn_quickVPN:) index:3]];
    
    CGSize updatedSize = [self preferredContentSize];
    updatedSize.height = 60*SCREEN_RATIO_Wide+10;
    [self setPreferredContentSize:updatedSize];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler
{
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData
    
    completionHandler(NCUpdateResultNewData);
}
- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets
{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}


-(IBAction)btn_quickLocation:(id)sender
{
    NSURL *url=[NSURL URLWithString:@"prefs:root=LOCATION_SERVICES"];
    [self.extensionContext openURL:url completionHandler:nil];
}
-(IBAction)btn_quickData:(id)sender
{
    NSURL *url=[NSURL URLWithString:@"prefs:root=MOBILE_DATA_SETTINGS_ID"];
    //    NSURL *url=[NSURL URLWithString:@"facetime-audio://suxiaozhou@gmail.com"];
    
    
    [self.extensionContext openURL:url completionHandler:nil];
}
-(IBAction)btn_quickVPN:(id)sender
{
    NSURL *url=[NSURL URLWithString:@"prefs:root=VPN"];
    
    
    [self.extensionContext openURL:url completionHandler:nil];
    
}
-(IBAction)btn_quickNotification:(id)sender
{
    NSURL *url=[NSURL URLWithString:@"prefs:root=NOTIFICATIONS_ID"];
    
    
    [self.extensionContext openURL:url completionHandler:nil];
}
-(IBAction)btn_quickHotPoint:(id)sender
{
    NSURL *url=[NSURL URLWithString:@"prefs:root=INTERNET_TETHERING"];
    
    
    [self.extensionContext openURL:url completionHandler:nil];
}
-(IBAction)btn_quickPrivacy:(id)sender
{
    NSURL *url=[NSURL URLWithString:@"prefs:root=Privacy"];
    
    
    [self.extensionContext openURL:url completionHandler:nil];
}
//-(NSInteger)x:(NSInteger)i
//{
//    return i*(50+5)+5;
//    
//}


-(UIButton *)buttonImageName:(NSString *)imageName action:(SEL)action index:(NSInteger)index
{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    //    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button.imageView setContentMode:UIViewContentModeScaleAspectFill];
    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    [button setFrame:CGRectMake(index*(60*SCREEN_RATIO_Wide+10)+47,5, 60*SCREEN_RATIO_Wide,60*SCREEN_RATIO_Wide)];
    //    [button.layer setBorderWidth:1.0];
    return button;
    
}

@end
