//
//  TotalPViewController.m
//  Version 2
//
//  Created by Wenzel Jay Tubalde on 7/12/13.
//  Copyright (c) 2013 Openkit. All rights reserved.
//

#import "TotalPViewController.h"

@interface TotalPViewController ()

@end

@implementation TotalPViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
   // self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/*- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
*/

- (void)drawRect:(CGRect)rect{
   /* UIImage *image = [UIImage imageNamed:@"Xcode.png"];
    if (image != nil){
        NSLog(@"Successfully loaded the image.");
    } else {
        NSLog(@"Failed to load the image."); }*/
    
    
    
    
    CGContextRef currentContext1 = UIGraphicsGetCurrentContext();
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    UIColor *startColor = [UIColor redColor];
    CGFloat *startColorComponents =
    (CGFloat *)CGColorGetComponents([startColor CGColor]);
    
    UIColor *midColor = [UIColor yellowColor];
    CGFloat *midColorComponents =
    (CGFloat *)CGColorGetComponents([midColor CGColor]);
    
    UIColor *mid1Color = [UIColor greenColor];
    CGFloat *mid1ColorComponents =
    (CGFloat *)CGColorGetComponents([mid1Color CGColor]);
    
    
    UIColor *endColor = [UIColor cyanColor];
    CGFloat *endColorComponents =
    (CGFloat *)CGColorGetComponents([endColor CGColor]);
    
    
    CGFloat colorComponents[16] = {
        
        startColorComponents[3],
        startColorComponents[2],
        startColorComponents[1],
        startColorComponents[0],
        
        
        midColorComponents[0],
        midColorComponents[1],
        midColorComponents[2],
        midColorComponents[3],
        
        
        mid1ColorComponents[0],
        mid1ColorComponents[1],
        mid1ColorComponents[2],
        mid1ColorComponents[3],
        
        
        endColorComponents[0],
        endColorComponents[1],
        endColorComponents[2],
        endColorComponents[3],
        
        
    };
    
    CGFloat colorIndices[5] = {
        0.0f, /*color 0 components in the array*/
        0.4f, /*color 1 components in the array*/
        0.64f,
        0.84f,
        0.99f
        
        
    };
    
    CGGradientRef gradient =
    CGGradientCreateWithColorComponents(colorSpace, (const CGFloat *)&colorComponents,(const CGFloat *)&colorIndices, 5);
    
    CGColorSpaceRelease(colorSpace);
    
    //CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    CGPoint startPoint, endPoint;
    
    startPoint = CGPointMake(0,80);//CGPointMake(screenBounds.size.width, startPoint.y);
    
    endPoint = CGPointMake(0, 435);//CGPointMake(0.0f, screenBounds.size.height / 0.35f);
    
    CGContextDrawLinearGradient(currentContext1, gradient, startPoint, endPoint, 0);
    
    CGGradientRelease(gradient);
    
    
    
    float x;
    
    
    
    //[myString drawAtPoint:CGPointMake(20,80) withFont:helveticaBold];
    
    [[UIColor brownColor] set];
    
    //Drawing Bars
    for (x=0; x<=500; x+=6) {
        CGContextRef currentContext = UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(currentContext, 1.3f);
        CGContextMoveToPoint(currentContext, 0.0f, x);
        CGContextAddLineToPoint(currentContext, 340.0f, x);
        CGContextStrokePath(currentContext);
    }
    

}
@end
