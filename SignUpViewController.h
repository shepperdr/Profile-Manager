//
//  LoginViewController.h
//  ProfileManager
//
//  Created by Robert Shepperd on 8/11/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface SignUpViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;

- (BOOL)textFieldShouldReturn:(UITextField *)passwordTextField;



@end
