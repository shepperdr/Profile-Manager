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
@property (weak, nonatomic) IBOutlet UIButton *signupButton;
//Picker Password
@property (weak, nonatomic) IBOutlet UIPickerView *pickerOne;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerTwo;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerThree;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerFour;

@property(strong, nonatomic)NSArray *pickerNumbersArray;



@end
