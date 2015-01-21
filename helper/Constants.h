//
//  Constants.h
//  quickExtension
//
//  Created by wantry on 15/1/5.
//  Copyright (c) 2015年 wantry. All rights reserved.
//

//#import <Foundation/Foundation.h>






#define SCREEN_RATIO_Wide (CGRectGetWidth([UIScreen mainScreen].bounds) / 320.f)
#define SCREEN_RATIO_Height (CGRectGetWidth([UIScreen mainScreen].bounds) / 568.f)

#define kColorLine ([UIColor colorWithRed:204.f/255.f green:204.f/255.f blue:204.f/255.f alpha:1.f])
#define kColorTip ([UIColor colorWithRed:76.f/255.f green:76.f/255.f blue:76.f/255.f alpha:1.f])

#define kColorM ([UIColor colorWithRed:1.f green:102.f/255.f blue:0.f alpha:1.f])
#define kColorMHighlight ([UIColor colorWithRed:1.f green:155.f/255.f blue:82.f/255.f alpha:1.f])
#define kColorCellSelected ([UIColor colorWithRed:238.f/255.f green:238.f/255.f blue:238.f/255.f alpha:1.f])
#define kColorL ([UIColor colorWithRed:10.f/255.f green:110.f/255.f blue:45.f/255.f alpha:1.f])
#define kColorS ([UIColor colorWithRed:240.f/255.f green:240/255.f blue:240.f/255.f alpha:1.f])
#define kColorG ([UIColor colorWithRed:102./255. green:102./255. blue:102./255. alpha:1.])
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBCGCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1].CGColor

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

#define IS_4INCH_SCREEN (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) && ([UIScreen mainScreen].bounds.size.height > 480.0f)


#define setUserDefault(key, object) \
if (object == nil) \
[[NSUserDefaults standardUserDefaults] removeObjectForKey:(key)]; \
else \
[[NSUserDefaults standardUserDefaults] setObject:(object) forKey:(key)]; \
[[NSUserDefaults standardUserDefaults] synchronize];

#define getUserDefault(key) \
[[NSUserDefaults standardUserDefaults] objectForKey:(key)]


#define removeUserDefault(key) \
if(key!=nil)\
[[NSUserDefaults standardUserDefaults] removeObjectForKey:(key)]; \
[[NSUserDefaults standardUserDefaults] synchronize];



#define kUIScreen_Height   ([UIScreen mainScreen].bounds.size.height)
#define kUIScreen_Width   ([UIScreen mainScreen].bounds.size.width)

#define IOS8 [[[UIDevice currentDevice] systemVersion] hasPrefix:@"8"]
#define IOS7 [[[UIDevice currentDevice] systemVersion] hasPrefix:@"7"]
#define IOS6 [[[UIDevice currentDevice] systemVersion] hasPrefix:@"6"]

#define KImageLevel    0.6
