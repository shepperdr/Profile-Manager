//
//  ViewController.h
//  ProfileManager
//
//  Created by Robert Shepperd on 7/28/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *signUp;
@property (weak, nonatomic) IBOutlet UIButton *login;


//- (BOOL)textFieldShouldReturn:(UITextField *)passwordTextField;
- (BOOL)textFieldShouldReturn:(UITextField *)passwordTextField;


@end

