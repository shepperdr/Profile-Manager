//
//  LoginViewController.m
//  ProfileManager
//
//  Created by Robert Shepperd on 8/11/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()<UITextFieldDelegate>

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)signUpButton:(id)sender {
    
    if ([_emailTextField.text isEqualToString:@""] || [_passwordTextField.text isEqualToString:@""]) {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"You must fill all required fields" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK!" style:UIAlertActionStyleDestructive handler:nil]];
        {
            [self signupButton];
            [self.navigationController popToViewController:self animated:YES];
        };
        
        [self.navigationController presentViewController:alert animated:YES completion:nil];
        
        
    }

}

- (BOOL)textFieldShouldReturn:(UITextField *)passwordTextField
{
    
    self.passwordTextField.delegate = self;
    [passwordTextField resignFirstResponder];
    
    return YES;
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
