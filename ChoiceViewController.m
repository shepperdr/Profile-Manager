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
    
    NSURL *url = [NSURL URLWithString:@"https://www.yahoo.com"];
    SafariViewContoller *svc = [[SafariViewContoller alloc]initWithURL:url];
    [self presentViewController:svc animated:YES completion:nil];
    svc.delegate = self;
}
- (IBAction)twitterOne:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"https://www.twitter.com"];
    SafariViewContoller *svc = [[SafariViewContoller alloc]initWithURL:url];
    [self presentViewController:svc animated:YES completion:nil];
    svc.delegate = self;
}

- (IBAction)twitterTwo:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"https://www.nfl.com"];
    SafariViewContoller *svc = [[SafariViewContoller alloc]initWithURL:url];
    [self presentViewController:svc animated:YES completion:nil];
    svc.delegate = self;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
//    SFSafariViewController *viewController = segue.destinationViewController;
//
//    if ([[segue identifier] isEqualToString:@"facebookOne"]) {
////        viewController.urlString =  @"https://www.facebook.com/login";
//        NSURL *url = [NSURL URLWithString:@"https://www.facebook.com"];
//        SafariViewContoller *svc = [[SafariViewContoller alloc]initWithURL:url];
//        [self presentViewController:svc animated:YES completion:nil]
//        svc.delegate = self;
//        
//        
//        NSLog(@"FB1");
//        
//    }
}
//    else if ([[segue identifier]isEqualToString:@"facebookTwo"]) {
//        viewController.urlString = @"https://www.facebook.com";
//        
//        NSLog(@"FB2");
//    
//    } else if ([[segue identifier] isEqualToString:@"twitterOne"]) {
//       viewController.urlString = @"https://twitter.com";
//        
//        NSLog(@"Titter1");
//        
//    } else if ([[segue identifier] isEqualToString:@"twitterTwo"]) {
//        viewController.urlString = @"https://nfl.com";
//        
//        NSLog(@"Twitter2");
//        
//    }
//
//  
//
//
//}


@end
