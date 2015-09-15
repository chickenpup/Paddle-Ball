//
//  ViewController.h
//  Facebook
//
//  Created by Chris on 9/14/15.
//  Copyright (c) 2015 Prince Fungus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

@interface ViewController : UIViewController <FBSDKLoginButtonDelegate>

@property (strong, nonatomic) FBSDKLoginButton *loginButton;

@end

