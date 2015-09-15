//
//  ViewController.m
//  Facebook
//
//  Created by Chris on 9/14/15.
//  Copyright (c) 2015 Prince Fungus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loginButton = [[FBSDKLoginButton alloc] init];
    // Optional: Place the button in the center of your view.
    self.loginButton.center = self.view.center;
    self.loginButton.delegate = self;
    self.loginButton.readPermissions = @[@"public_profile", @"email"];
    [self.view addSubview:self.loginButton];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) getUserEmail
{
    NSMutableDictionary *parameters = [[NSMutableDictionary alloc]init];
    
    if ([FBSDKAccessToken currentAccessToken]) {
        [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:parameters]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
             if (!error) {
                 NSLog(@"fetched user:%@", result);
                 NSLog(@"fetched parameters:%@", parameters);

             }
         }];
    }
}

#pragma mark FBSDKLoginButtonDelegate methods
- (void)
loginButton:(FBSDKLoginButton *)loginButton
didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result
error:(NSError *)error
{
    [self getUserEmail];
}

- (BOOL) loginButtonWillLogin:(FBSDKLoginButton *)loginButton;
{
    
    return YES;
}

- (void) loginButtonDidLogOut:(FBSDKLoginButton *)loginButton
{
    
}



@end
