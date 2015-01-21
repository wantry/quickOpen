//
//  ViewController.m
//  QuickOpen
//
//  Created by wantry on 15/1/18.
//  Copyright (c) 2015年 quick. All rights reserved.
//

#import "ViewController.h"
#define KstartY 100
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    
    UIImageView *imgv=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img_group"]];
    [imgv setContentMode:UIViewContentModeScaleAspectFill];
    [imgv setFrame:CGRectMake(0, KstartY, 200*SCREEN_RATIO_Wide, 200*SCREEN_RATIO_Wide)];
    [self.view addSubview:imgv];
    CGPoint c=imgv.center;
    c.x=self.view.center.x;
    imgv.center=c;
    [imgv.layer setCornerRadius:imgv.frame.size.width*0.1];
    [imgv setClipsToBounds:YES];
    
    
    UITextView *text=[[UITextView alloc]initWithFrame:CGRectMake(0, imgv.frame.origin.y+CGRectGetHeight(imgv.frame)+20,kUIScreen_Width*0.7, 250.0)];
    [text setTextAlignment:NSTextAlignmentCenter];
    [text setTextColor:[UIColor grayColor]];
    [self.view addSubview:text];
    [text setText:NSLocalizedString(@"title", nil)];
    text.editable=NO;
    text.selectable=YES;
    text.font=[UIFont systemFontOfSize:15.0f];
    text.dataDetectorTypes=UIDataDetectorTypeAll;
    CGPoint c2=text.center;
    c2.x=self.view.center.x;
    text.center=c2;
//    [text.layer setBorderWidth:1.0];
    
//    UIButton *btn_imessage=[UIButton buttonWithType:UIButtonTypeCustom];
//    [btn_imessage addTarget:self action:@selector(to_imessage) forControlEvents:UIControlEventTouchUpInside];
//    [btn_imessage setTitle:@"Email" forState:UIControlStateNormal];
//    [self.view addSubview:btn_imessage];
//    [btn_imessage setFrame:CGRectMake(0, 100, 60, 30)];
//    
//    UIButton *btn_twitter=[UIButton buttonWithType:UIButtonTypeCustom];
//    [btn_twitter addTarget:self action:@selector(to_twitter) forControlEvents:UIControlEventTouchUpInside];
//    [btn_twitter setTitle:@"makerTry" forState:UIControlStateNormal];
//    [self.view addSubview:btn_twitter];
//    [btn_twitter setFrame:CGRectMake(0, 200, 60, 30)];
//    
//    UIButton *btn_weibo=[UIButton buttonWithType:UIButtonTypeCustom];
//    [btn_weibo addTarget:self action:@selector(to_weibo) forControlEvents:UIControlEventTouchUpInside];
//    [btn_weibo setTitle:@"QuickApp" forState:UIControlStateNormal];
//    [self.view addSubview:btn_weibo];
//    [btn_weibo setFrame:CGRectMake(0, 300, 60, 30)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark UIButton
-(IBAction)to_imessage:(id)sender
{
   

}

-(IBAction)to_twitter:(id)sender
{
    

}

-(IBAction)to_weibo:(id)sender
{


}



@end
