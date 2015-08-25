//
//  ViewController.m
//  ProfileManager
//
//  Created by Robert Shepperd on 7/28/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "ViewController.h"
#import "ChoiceViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)signUp:(id)sender {
    if ([_emailTextField.text isEqualToString:@""] || [_passwordTextField.text isEqualToString:@""]) {
       
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"You must fill all required fields" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK!" style:UIAlertActionStyleDestructive handler:nil]];
         {
            [self signUp];
         };
        
        [self.navigationController presentViewController:alert animated:YES completion:nil];
        
    }
}


  


    
  
    


@end
