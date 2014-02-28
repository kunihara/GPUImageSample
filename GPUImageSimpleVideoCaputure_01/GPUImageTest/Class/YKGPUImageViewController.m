//
//  YKGPUImageViewController.m
//  GPUImageTest
//
//  Created by kunihara yoshihiro on 2014/02/26.
//  Copyright (c) 2014年 kunihara yoshihiro. All rights reserved.
//

#import "YKGPUImageViewController.h"

@interface YKGPUImageViewController ()

//@property (readonly) BOOL hasCameraLoaded;

@end

@implementation YKGPUImageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //カメラキャプチャーするGPUImageVideoCameraを生成・設定
    videoCamera = [[GPUImageVideoCamera alloc] initWithSessionPreset:AVCaptureSessionPresetMedium cameraPosition:AVCaptureDevicePositionBack];
    //videoCamera = [[GPUImageVideoCamera alloc] initWithSessionPreset:AVCaptureSessionPreset640x480 cameraPosition:AVCaptureDevicePositionBack];
    //    videoCamera = [[GPUImageVideoCamera alloc] initWithSessionPreset:AVCaptureSessionPreset640x480 cameraPosition:AVCaptureDevicePositionFront];
    //    videoCamera = [[GPUImageVideoCamera alloc] initWithSessionPreset:AVCaptureSessionPreset1280x720 cameraPosition:AVCaptureDevicePositionBack];
    //    videoCamera = [[GPUImageVideoCamera alloc] initWithSessionPreset:AVCaptureSessionPreset1920x1080 cameraPosition:AVCaptureDevicePositionBack];
    
    videoCamera.outputImageOrientation = UIInterfaceOrientationPortrait;
    videoCamera.horizontallyMirrorFrontFacingCamera = NO;
    videoCamera.horizontallyMirrorRearFacingCamera = NO;
    
    //実際に描画するためのGPUImageViewを生成・設定
    gpuVideoView = [[GPUImageView alloc] initWithFrame:self.view.frame];
    gpuVideoView.fillMode = kGPUImageFillModePreserveAspectRatioAndFill;
    gpuVideoView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    gpuVideoView.opaque = YES;
    [self.view addSubview:gpuVideoView];
    
    //GPUImageVideoCameraでキャプチャーした画像をGPUImageViewに適用
    //フィルターを使いたい場合は、フィルターを事前に生成・設定して、ここの部分でaddTargetで数珠続きする感じで設定していく
    [videoCamera addTarget:gpuVideoView];
    
    //キャプチャー開始
    [videoCamera startCameraCapture];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
