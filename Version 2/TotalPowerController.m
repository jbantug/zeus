//
//  TotalPowerController.m
//  Version 2
//
//  Created by Wenzel Jay Tubalde on 7/12/13.
//  Copyright (c) 2013 Openkit. All rights reserved.
//

#import "TotalPowerController.h"

@implementation TotalPowerController

 int x,y,width;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
- (void)drawRect:(CGRect)rect{
    UIImage *image = [UIImage imageNamed:@"Xcode.png"];
    if (image != nil){
        NSLog(@"Successfully loaded the image.");
    } else {
        NSLog(@"Failed to load the image."); }
}*/



- (void)drawRect:(CGRect)rect{
    
    [self bars];
    //[self drawRectAtBottomOfScreen];

}

-(void)bars{
    width=633;
    y=94;
    x=100;
    
    
    [[UIColor redColor]set];
    //for(int i=0; i<){
    CGContextRef bars = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(bars, width);
    CGContextMoveToPoint(bars, 0, y);
    CGContextAddLineToPoint(bars, x, y);
    CGContextStrokePath(bars);
   // }
    //return width,y,x;
    /*
    UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(69, 130)
                                                         radius:30
                                                     startAngle:-155
                                                       endAngle:(7.0f/22.0f)
                                                      clockwise:NO];
    
    path1.lineCapStyle = kCGLineCapRound;
    path1.lineWidth = 4.0f;
    [[UIColor blackColor] setStroke];
    [path1 stroke];
    */

}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
