//
//  LoginViewController.m
//  ProfileManager
//
//  Created by Robert Shepperd on 8/11/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()<UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate>

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pickerNumbersArray = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"0"];
    
    
    // Do any additional setup after loading the view.
}
- (IBAction)signUpButton:(id)sender {
    
    if ([_emailTextField.text isEqualToString:@""]) {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"You must fill all required fields" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK!" style:UIAlertActionStyleDestructive handler:nil]];
        {
            [self signupButton];
            [self.navigationController popToViewController:self animated:YES];
        };
        
        [self.navigationController presentViewController:alert animated:YES completion:nil];
        
        
    }

}

- (BOOL)textFieldShouldReturn:(UITextField *)emailTextField
{
    
    self.emailTextField.delegate = self;
    [emailTextField resignFirstResponder];
    
    return YES;
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    if ([pickerView isEqual:_pickerOne]) {
        return 1;
        
    } if ([pickerView isEqual:_pickerTwo]) {
        return 1;
        
    } if ([pickerView isEqual:_pickerThree]) {
        return 1;
        
    } if ([pickerView isEqual:_pickerFour]) {
        return 1;
        
    }
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
   
    if ([pickerView isEqual:_pickerOne]) {
        return _pickerNumbersArray.count;
        
    } if ([pickerView isEqual:_pickerTwo]) {
        return _pickerNumbersArray.count;
        
    } if ([pickerView isEqual:_pickerThree]) {
        return _pickerNumbersArray.count;
        
    } if ([pickerView isEqual:_pickerFour]) {
        return _pickerNumbersArray.count;
        
    }
    return _pickerNumbersArray.count;
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
   
    if ([pickerView isEqual:_pickerOne]) {
        return _pickerNumbersArray[row];
    
    } if ([pickerView isEqual:_pickerTwo]) {
        return _pickerNumbersArray[row];
    
    } if ([pickerView isEqual:_pickerThree]) {
        return _pickerNumbersArray[row];
    
    } if ([pickerView isEqual:_pickerFour]) {
        return _pickerNumbersArray[row];
    }
    return _pickerNumbersArray[row];
 
    
}
- (IBAction)saveEmail:(id)sender {
    NSString *emailSaveString = _emailTextField.text;
    [[NSUserDefaults standardUserDefaults]setObject:emailSaveString forKey:@"emailSaveString"];
    [[NSUserDefaults standardUserDefaults ]synchronize];
    
    
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
