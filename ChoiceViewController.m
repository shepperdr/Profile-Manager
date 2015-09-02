//
//  ChoiceViewController.m
//  ProfileManager
//
//  Created by Robert Shepperd on 8/11/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "ChoiceViewController.h"
#import "ViewController.h"
#import "SafariViewContoller.h"
#import "SignUpViewController.h"


@interface ChoiceViewController ()<SFSafariViewControllerDelegate>

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

- (IBAction)fbOne:(id)sender {
   
    NSURL *url = [NSURL URLWithString:@"https://www.facebook.com"];
    SafariViewContoller *svc = [[SafariViewContoller alloc]initWithURL:url];
    [self presentViewController:svc animated:YES completion:nil];
    svc.delegate = self;
    
    NSLog(@"FB1");
    }
- (IBAction)fbTwo:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"http://football.fantasysports.yahoo.com"];
    SafariViewContoller *svc = [[SafariViewContoller alloc]initWithURL:url];
    [self presentViewController:svc animated:YES completion:nil];
    svc.delegate = self;
    NSLog(@"FB2");
    
}
- (IBAction)twitterOne:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"https://www.twitter.com"];
    SafariViewContoller *svc = [[SafariViewContoller alloc]initWithURL:url];
    [self presentViewController:svc animated:YES completion:nil];
    svc.delegate = self;
    NSLog(@"Twit1");
}

- (IBAction)twitterTwo:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"http://fantasy.nfl.com"];
    SafariViewContoller *svc = [[SafariViewContoller alloc]initWithURL:url];
    [self presentViewController:svc animated:YES completion:nil];
    svc.delegate = self;
    NSLog(@"Twit2");
    
}

- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
}


@end
