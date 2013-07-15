//
//  GraphView.m
//  MyGraph
//
//  Created by Alexander Kolesnikov on 15/09/2011.
//  Copyright 2011 Sirius Lab Ltd. All rights reserved.
//

#import "GraphView.h"

@implementation GraphView
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
    
    
    for ( p=0; p<=150; p++) {
        [[UIColor blueColor]set];
        CGContextRef currentContext = UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(currentContext, 143);
        CGContextMoveToPoint(currentContext, 0.0f, x);
        CGContextAddLineToPoint(currentContext, 123, x);
        CGContextStrokePath(currentContext);
        x+=144;
    }
    for (p=0; p<=150;p++ ) {
        
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
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
 
    // Draw the background image
    UIImage *image = [UIImage imageNamed:@"background.png"];
	CGRect imageRect = CGRectMake(0, 0, image.size.width, image.size.height);
    CGContextDrawImage(context, imageRect, image.CGImage);
    
    CGContextSetLineWidth(context, 0.6);
	CGContextSetStrokeColorWithColor(context, [[UIColor lightGrayColor] CGColor]);
    CGFloat dash[] = {2.0, 2.0};
    CGContextSetLineDash(context, 0.0, dash, 2);
    
    // How many lines?
    int howMany = (kDefaultGraphWidth - kOffsetX) / kStepX;
    
    // Here the lines go
    for (int i = 0; i <= howMany; i++)
    {
        CGContextMoveToPoint(context, kOffsetX + i * kStepX, kGraphTop);
		CGContextAddLineToPoint(context, kOffsetX + i * kStepX, kGraphBottom);
    }
    
    int howManyHorizontal = (kGraphBottom - kGraphTop - kOffsetY) / kStepY;
    for (int i = 0; i <= howManyHorizontal; i++)
    {
        CGContextMoveToPoint(context, kOffsetX, kGraphBottom - kOffsetY - i * kStepY);
		CGContextAddLineToPoint(context, kDefaultGraphWidth, kGraphBottom - kOffsetY - i * kStepY);
    }
    
    CGContextStrokePath(context);
    CGContextSetLineDash(context, 0, NULL, 0); // Remove the dash
}
*/
@end
