//
//  TotalPowerController.h
//  Version 2
//
//  Created by Wenzel Jay Tubalde on 7/12/13.
//  Copyright (c) 2013 Openkit. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kGraphHeight 900
#define kDefaultGraphWidth 300
#define kOffsetX 10
#define kStepX 50
#define kGraphBottom 300
#define kGraphTop 0
#define kStepY 50
#define kOffsetY 10
@interface TotalPowerController : UIView


@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (nonatomic, strong) UIImageView *myImageView;
@property (nonatomic, strong) UIScrollView *myScrollView;

@end
