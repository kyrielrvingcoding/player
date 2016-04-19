//
//  ViewController.m
//  AVPlayer
//
//  Created by 诸超杰 on 16/4/7.
//  Copyright © 2016年 诸超杰. All rights reserved.
//

#import "ViewController.h"

#import "AppDelegate.h"
#import "PlayVIew.h"
#import "AVPlayerController.h"
@interface ViewController ()

@end

@implementation ViewController



- (IBAction)ddd:(id)sender {
    
    
    AVPlayerController  *VC = [[AVPlayerController alloc] init];;
    AppDelegate *AD = [UIApplication sharedApplication].delegate;
    AD.is_flip = YES;

    MovieModel *model = [[MovieModel alloc] init];
    model.url = @"http://baobab.wdjcdn.com/1459338283422Slacklining.mp4";
    model.title = @"dddd";
    VC.model = model;
    [self presentViewController:VC animated:YES completion:nil];

}
 
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    UIImageView *dd = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 20, 20)];
//    dd.backgroundColor = [UIColor redColor];
    [self.view addSubview:dd];
    UIImage *circluImage = [UIImage imageNamed:@"点1"];
//    /
//    UIGraphicsBeginImageContextWithOptions(circluImage.size, NO, 0.0);
//    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, circluImage.size.width, circluImage.size.height)];
//    [path addClip];//设置裁剪区域
//    [circluImage drawAtPoint:CGPointZero];
    UIGraphicsBeginImageContext(CGSizeMake(10, 10));
    [circluImage drawInRect:CGRectMake(0, 0, 10, 10)];
 
  

    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    dd.image = newImage;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
