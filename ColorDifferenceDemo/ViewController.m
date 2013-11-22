//
//  ViewController.m
//  ColorDifferenceDemo
//
//  Created by Xummer on 13-11-22.
//  Copyright (c) 2013年 Xummer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *colorImageView;
@property (weak, nonatomic) IBOutlet UIImageView *colorSenseImageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [_colorImageView setBackgroundColor:[UIColor colorWithWhite:0.180 alpha:1.000]];
     // 46.0f/255.0f = 0.18039215686274509803
    
    [_colorSenseImageView setBackgroundColor:[UIColor colorWithWhite:0.135 alpha:1.000]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
