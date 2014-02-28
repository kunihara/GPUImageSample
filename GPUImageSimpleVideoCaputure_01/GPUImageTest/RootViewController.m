//
//  RootViewController.m
//  GPUImageTest
//
//  Created by kunihara yoshihiro on 2014/02/26.
//  Copyright (c) 2014年 kunihara yoshihiro. All rights reserved.
//

#import "RootViewController.h"
#import "YKGPUImageViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"%s",__FUNCTION__);
    
    self.view.backgroundColor = [UIColor redColor];
    
    // buttons
    UIButton *cameraBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [cameraBtn setBackgroundColor:[UIColor blackColor]];
    [cameraBtn setTitle:@"camera button" forState:UIControlStateNormal];
    [cameraBtn addTarget:self action:@selector(cameraButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:cameraBtn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)cameraButtonPressed
{
    YKGPUImageViewController *gpuimageVC = [[YKGPUImageViewController alloc] init];
    [self presentViewController:gpuimageVC animated:YES completion:nil];
}

@end
