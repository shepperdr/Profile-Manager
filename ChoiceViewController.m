//
//  ChoiceViewController.m
//  ProfileManager
//
//  Created by Robert Shepperd on 8/11/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "ChoiceViewController.h"
#import "ViewController.h"

@interface ChoiceViewController ()

@property (nonatomic, strong) NSString *urlStringPicked;

@end

@implementation ChoiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewController *viewController = segue.destinationViewController;

    if ([[segue identifier] isEqualToString:@"facebookOne"]) {
        viewController.urlString =  @"https://www.facebook.com/login";
        
    } else if ([[segue identifier]isEqualToString:@"facebookTwo"]) {
        viewController.urlString = @"https://www.yahoo.com";
    
    } else if ([[segue identifier] isEqualToString:@"twitterOne"]) {
       viewController.urlString = @"https://twitter.com";
        
    } else if ([[segue identifier] isEqualToString:@"twitterTwo"]) {
        viewController.urlString = @"https://nfl.com";
    }




}


@end
