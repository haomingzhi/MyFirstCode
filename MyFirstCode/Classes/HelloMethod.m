//
//  HelloMethod.m
//  Helloworld
//
//  Created by 暖色科技 on 2020/6/19.
//  Copyright © 2020 暖色科技. All rights reserved.
//

#import "HelloMethod.h"

@implementation HelloMethod
+(NSString *)ouputHello
{
    return @"hello world惺惺相惜cccdddd";
}

+(UIImage *)ouputImage
{
//    if (@available(iOS 13.0, *)) {
//        return   [UIImage imageNamed:@"下载" inBundle:[NSBundle bundleForClass:[self class]] withConfiguration:nil];
//    } else {
//        // Fallback on earlier versions
//        return [UIImage imageNamed:[[NSBundle bundleForClass:[self class]].bundlePath stringByAppendingString:@"下载"]] ;
//    }
//    return [UIImage imageNamed:@"下载"];
//    NSString *bundleName = @"MyFirstCode.framework";//[[NIMKit sharedKit] resourceBundleName];
//       NSURL *bundleURL = [[NSBundle bundleForClass:[HelloMethod class]] URLForResource:bundleName withExtension:nil];
//
//       if (!bundleURL) // 兼容Pod use_frameworks!下，用户自定义资源文件
//       {
//           bundleURL = [[NSBundle mainBundle] URLForResource:bundleName withExtension:nil];
//       }
//
//       if (!bundleURL)
//       {
//           return nil;
//       }
    NSString *imageName = @"相册选择选定";//@"下载";
//       NSBundle *resourceBundle = [NSBundle bundleWithURL:bundleURL];
//       UIImage *image = [UIImage imageNamed:imageName inBundle:resourceBundle compatibleWithTraitCollection:nil];
//
//       NSString *name = [bundleName stringByAppendingPathComponent:imageName];
//       //优先取上层bundle 里的图片，如果没有，则用自带资源的图片
//       return image? image : [UIImage imageNamed:name];
    
    UIImage *img = [UIImage imageNamed:imageName];
    //    NSURL *bundleURL = [[NSBundle bundleForClass:[DDExSessionEvent class]];
    NSBundle *resourceBundle = [NSBundle bundleWithURL: [[NSBundle bundleForClass:[HelloMethod class]] URLForResource:@"MyFirstCode.bundle" withExtension:nil]];//[NSBundle bundleForClass:[HelloMethod class]];
//  NSArray *a  = [NSBundle allBundles];
    UIImage *image = [UIImage imageNamed:imageName inBundle:resourceBundle compatibleWithTraitCollection:nil];
    
    //    NSString *name = [bundleName stringByAppendingPathComponent:imageName];
    //优先取上层bundle 里的图片，如果没有，则用自带资源的图片
    return img?: image ?:[UIImage new];
}

@end
