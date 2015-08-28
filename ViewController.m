//
//  ViewController.m
//  ProfileManager
//
//  Created by Robert Shepperd on 7/28/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "ViewController.h"
#import "ChoiceViewController.h"


@interface ViewController ()<UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pickerNumbersArray = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"0"];

        
}
- (IBAction)loginButton:(id)sender {
    
    if ([_emailTextField.text isEqualToString:@""]) /*|| [_passwordTextField.text isEqualToString:@""])*/ {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"You must fill all required fields. If you do not have an account please select 'Sign Up'" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK!" style:UIAlertActionStyleDestructive handler:nil]];
        {
            [self login];
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


    
    

- (IBAction)loadEmail:(SignUpViewController *)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *emailLoadString = [defaults objectForKey:@"emailSaveString"];
    [_emailTextField setText:emailLoadString];
    
    NSLog(@"Email Loaded");
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



  


    
  
    


@end
