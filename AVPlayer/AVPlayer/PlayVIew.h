//
//  PlayVIew.h
//  AVPlayer
//
//  Created by 诸超杰 on 16/4/7.
//  Copyright © 2016年 诸超杰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface PlayVIew : UIView
@property (weak, nonatomic) IBOutlet UIImageView *backView;
@property (weak, nonatomic) IBOutlet UILabel *clearLabel;
@property (weak, nonatomic) IBOutlet UIButton *playButton;
@property (weak, nonatomic) IBOutlet UILabel *alreadyTImeLabel;
@property (weak, nonatomic) IBOutlet UILabel *remain;
@property (weak, nonatomic) IBOutlet UISlider *timeSlider;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (nonatomic, strong) AVPlayer *player;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;

@property (weak, nonatomic) IBOutlet UILabel *moveTimeLabel;
@end
