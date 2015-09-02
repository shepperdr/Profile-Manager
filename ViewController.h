//
//  ViewController.h
//  ProfileManager
//
//  Created by Robert Shepperd on 7/28/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SignUpViewController.h"

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UIButton *login;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;
//@property (weak, nonatomic) IBOutlet UIPickerView *pickerOne;
@property (weak, nonatomic) IBOutlet UIPickerView *passwordPicker;



@property(strong, nonatomic)NSArray *pickerNumbersArray;

- (BOOL)textFieldShouldReturn:(UITextField *)emailTextField;

@end

