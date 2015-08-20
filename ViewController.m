//
//  ViewController.m
//  ProfileManager
//
//  Created by Robert Shepperd on 7/28/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"urlString"];

    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];

    [_webView loadRequest:urlRequest];

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

  


    
  
    


@end
