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

@property (strong, nonatomic) NSString *digit0;
@property (strong, nonatomic) NSString *digit1;
@property (strong, nonatomic) NSString *digit2;
@property (strong, nonatomic) NSString *digit3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *emailLoadString = [defaults objectForKey:@"emailSaveString"];
    [_emailTextField setText:emailLoadString];
    
    self.digit0 = @"0";
    self.digit1 = @"0";
    self.digit2 = @"0";
    self.digit3 = @"0";

    
    _pickerNumbersArray = @[ @"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9"];

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
    NSLog(@"Login Touched");
}

- (IBAction)signUpButton:(id)sender {
    
    if ([_emailTextField.text isEqualToString:@""]) {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"You must fill all required fields. If you already have a registered account please fill your information and select login" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK!" style:UIAlertActionStyleDestructive handler:nil]];
        {
            [self signupButton];
            [self.navigationController popToViewController:self animated:YES];
        };
        
        [self.navigationController presentViewController:alert animated:YES completion:nil];
        
    }
   NSLog(@"SignUp Touched");
}


- (BOOL)textFieldShouldReturn:(UITextField *)emailTextField
    {
    
    self.emailTextField.delegate = self;
    [emailTextField resignFirstResponder];
      
    return YES;
}



-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {

    return 4;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {

    return 10;
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    
    return self.pickerNumbersArray[row];
   
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    
    if (component == 0) {
        self.digit0 = self.pickerNumbersArray[row];
        
    } if (component == 1) {
        self.digit1 = self.pickerNumbersArray[row];
        
    } if (component == 2) {
        self.digit2 = self.pickerNumbersArray[row];
    
    } if (component == 3) {
        self.digit3 = self.pickerNumbersArray[row];
        
    }
    NSLog(@"%@", self.pickerNumbersArray[row]);
    NSLog(@"%ld",(long)component);
}



- (IBAction)saveEmail:(id)sender {
    NSString *emailSaveString = _emailTextField.text;
    [[NSUserDefaults standardUserDefaults]setObject:emailSaveString forKey:@"emailSaveString"];
    [[NSUserDefaults standardUserDefaults ]synchronize];
//    
//    NSString *pickerPasswordString = _pickerOne.;
//    [[NSUserDefaults standardUserDefaults]setObject:pickerPasswordString forKey:@"pickerPasswordArray"];
//    [[NSUserDefaults standardUserDefaults]synchronize];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



  


    
  
    


@end
