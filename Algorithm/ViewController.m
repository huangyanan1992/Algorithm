//
//  ViewController.m
//  Algorithm
//
//  Created by Huang Yanan on 16/7/19.
//  Copyright © 2016年 Huang Yanan. All rights reserved.
//

#import "ViewController.h"
#import "Algorithm.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *lhsSource = @"12368102369126318236218391231231232132132";
    NSString *rhsSource = @"9999999999999991232399999999999999999999999";
    NSLog(@"%@",[Algorithm addBigNumbers:lhsSource rhs:rhsSource]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
