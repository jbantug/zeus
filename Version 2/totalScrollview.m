//
//  totalScrollview.m
//  Version 2
//
//  Created by Wenzel Jay Tubalde on 7/15/13.
//  Copyright (c) 2013 Openkit. All rights reserved.
//

#import "totalScrollview.h"

@implementation totalScrollview
int x,y,width,z,p,v;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect{
    
    [self bars];
    //[self drawRectAtBottomOfScreen];
    
}

-(void)bars{
    
    
    for ( p=0; p<=5; p++) {
        [[UIColor blueColor]set];
        CGContextRef currentContext = UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(currentContext, 143);
        CGContextMoveToPoint(currentContext, 0.0f, x);
        CGContextAddLineToPoint(currentContext, 123, x);
        CGContextStrokePath(currentContext);
        x+=144;
    }
    for (p=0; p<=15;p++ ) {
        
        v = rand() % 150 + 140;
        // NSLog(@"Value of hello = %d", v);
        
        
        [[UIColor cyanColor]set];
        CGContextRef currentContext = UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(currentContext, 19);
        CGContextMoveToPoint(currentContext, 124, z);
        CGContextAddLineToPoint(currentContext, v, z);
        CGContextStrokePath(currentContext);
        z+=20;
    }
    
    
    
    /*
     for (int c=0; c<1000; c+=144) {
     
     //width=633;
     //width=575;
     y=123;
     x=100;
     
     
     [[UIColor redColor]set];
     //for(int i=0; i<){
     CGContextRef bars = UIGraphicsGetCurrentContext();
     CGContextSetLineWidth(bars, c);
     CGContextMoveToPoint(bars, 0, y);
     CGContextAddLineToPoint(bars, x, y);
     CGContextStrokePath(bars);
     
     }*/
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
