//
//  YKGPUImageViewController.h
//  GPUImageTest
//
//  Created by kunihara yoshihiro on 2014/02/26.
//  Copyright (c) 2014年 kunihara yoshihiro. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GPUImage.h"

@interface YKGPUImageViewController : UIViewController
{
    GPUImageView            *gpuVideoView;    
    GPUImageVideoCamera     *videoCamera;
}

@end
