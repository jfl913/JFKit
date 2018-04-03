//
//  JFImagePickerKit.m
//  JFKit
//
//  Created by junfeng.li on 2018/4/3.
//

#import "JFImagePickerKit.h"
#import <AVFoundation/AVCaptureDevice.h>
#import <AVFoundation/AVMediaFormat.h>

@interface JFImagePickerKit ()

@end

@implementation JFImagePickerKit

+ (BOOL)isCameraAuthorizationDenied {
    BOOL isDenied = NO;
    AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (status == AVAuthorizationStatusDenied || status == AVAuthorizationStatusRestricted) {
        isDenied = YES;
    }
    return isDenied;
}

@end
