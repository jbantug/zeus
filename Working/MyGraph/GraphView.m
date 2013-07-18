//
//  GraphView.m
//  MyGraph
//
//  Created by Alexander Kolesnikov on 15/09/2011.
//  Copyright 2011 Sirius Lab Ltd. All rights reserved.
//

#import "GraphView.h"

@implementation GraphView
int x,y,width,z,p,i,py,h,g,a,r,f;
int selection =2;
int day,year,month,season,startyr,row,until;
int arr[];


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization codehahahaha
    }
    return self;
}


- (void)drawRect:(CGRect)rect{
    [self bars];
    [self fontsAndBars];

}



-(void)fontsAndBars{
    
    
/********Start of Year Font and Box******/
/******Setting current date********/
    startyr = 2007;
    year = 2010;
    //until = 2017;
    day = 18;
    month = 9;
    row=((year+1)-startyr);
    
    //Determining Seasons (Australia)
    if ((month >= 1 && month < 3) || month == 12) {
        season = 1;//Summer
    }else if(month >= 3 && month < 6){
        season = 2;//Autumn
    }else if(month >= 6 && month < 9 ){
        season = 3;//Winter
    }else{
        season = 4;//Spring
    }

    x=150;//serves as y-position
    //YearFontBox
    for ( i=0; i<row; ++i) {
        [[UIColor darkGrayColor]set];
        CGContextRef currentContext = UIGraphicsGetCurrentContext();
        
        if (i == (year-startyr)) {
            CGContextSetLineWidth(currentContext, 98);
            CGContextMoveToPoint(currentContext, 0.0f, x+10);
            CGContextAddLineToPoint(currentContext, 123, x+10);
            CGContextStrokePath(currentContext);
            x+=100;
        }else{
            CGContextSetLineWidth(currentContext, 78);
            CGContextMoveToPoint(currentContext, 0.0f, x);
            CGContextAddLineToPoint(currentContext, 123, x);
            CGContextStrokePath(currentContext);
            x+=80;
        }
    }
    
    y=170;
    
    for (i=0; i<row; ++i) {//YearFont
        
        [[UIColor lightGrayColor]set];
        if (startyr == (year-1)) {
            
            UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold"size:15.0f];
            NSString *myString = [NSString stringWithFormat:@"%d",startyr];
            [myString drawAtPoint:CGPointMake(45, y) withFont:helveticaBold];
            startyr++;
            y+=100;
        
       }else{
           UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold"size:15.0f];
           NSString *myString = [NSString stringWithFormat:@"%d",startyr];
           [myString drawAtPoint:CGPointMake(45, y) withFont:helveticaBold];
           startyr++;
           y+=80;
       }
    }
    
/*****End of Year Font and box******/
  
/*****Start of Seasons Font*********/
    
    py=110;
    for (i=1; i<=row; i++) {//SeasonFont
        
        [[UIColor blackColor]set];
        NSString *season1 = @"Summer";
        NSString *season2 = @"Autumn";
        NSString *season3 = @"Winter";
        NSString *season4 = @"Spring";
        
        if (i==row) {
            
            UIFont *normal = [UIFont fontWithName:@"HelveticaNeue-Bold"size:15.0f];
            UIFont *bold = [UIFont fontWithName:@"HelveticaNeue-Bold"size:30.0f];
            
            if(season == 1){
                [season1 drawAtPoint:CGPointMake(130, py) withFont:bold];
                py+=40;
                [season2 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                [season3 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                [season4 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                               
            }else if(season == 2){
                [season1 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                [season2 drawAtPoint:CGPointMake(130, py) withFont:bold];
                py+=40;
                [season3 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                [season4 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                
            }else if(season == 3){
                [season1 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                [season2 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                [season3 drawAtPoint:CGPointMake(130, py) withFont:bold];
                py+=40;
                [season4 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                
            }else{
                [season1 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                [season2 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                [season3 drawAtPoint:CGPointMake(130, py) withFont:normal];
                py+=20;
                [season4 drawAtPoint:CGPointMake(130, py) withFont:bold];
                py+=40;
                
            }
        }else{
            
            UIFont *fontstyle = [UIFont fontWithName:@"HelveticaNeue-Bold"size:15.0f];
            
            [season1 drawAtPoint:CGPointMake(130, py) withFont:fontstyle];
            py+=20;
            [season2 drawAtPoint:CGPointMake(130, py) withFont:fontstyle];
            py+=20;
            [season3 drawAtPoint:CGPointMake(130, py) withFont:fontstyle];
            py+=20;
            [season4 drawAtPoint:CGPointMake(130, py) withFont:fontstyle];
            py+=20;
            
            
        }
        
    }
    
}

-(int)bars{
    
  /*  
    z=120;
    y=110;
    //a=14350;
    
    for (p=0; p<=40;p++ ) {
        int v[p];
        v[p] = rand() % 150 + 140;
        //NSLog(@"Value of hello = %d", v[p]);
        
        
        if(p==13){
            
            
            [[UIColor lightGrayColor]set];
            CGContextRef currentContext = UIGraphicsGetCurrentContext();
            
            CGContextSetLineWidth(currentContext, 39);
            CGContextMoveToPoint(currentContext, 124, z+10);
            CGContextAddLineToPoint(currentContext, v[p], z+10);
            CGContextStrokePath(currentContext);
            z+=20;
            a = v[p];
            
            [[UIColor blackColor]set];
            NSString *myString = @"$ ";
            UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold"size:20.0f];
            NSString *value = [NSString stringWithFormat:@"%d",a];
            NSString *concat = [myString stringByAppendingString:value];
            [concat drawAtPoint:CGPointMake(260, y+7) withFont:helveticaBold];
            year++;
            y+=40;
        }else{
            
            
            [[UIColor lightGrayColor]set];
            CGContextRef currentContext = UIGraphicsGetCurrentContext();
            
            CGContextSetLineWidth(currentContext, 19);
            CGContextMoveToPoint(currentContext, 124, z);
            CGContextAddLineToPoint(currentContext, v[p], z);
            CGContextStrokePath(currentContext);
            z+=20;
            a = v[p];
            
            [[UIColor blueColor]set];
            NSString *myString = @"$ ";
            UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold"size:15.0f];
            NSString *value = [NSString stringWithFormat:@"%d",a];
            NSString *concat = [myString stringByAppendingString:value];
            [concat drawAtPoint:CGPointMake(270, y) withFont:helveticaBold];
            year++;
            y+=20;
        }
        
        
        
    }
    
    for ( p=0; p<=30; p++) {//
        [[UIColor darkGrayColor]set];
        CGContextRef currentContext = UIGraphicsGetCurrentContext();
        
       /* if (p==3) {
            CGContextSetLineWidth(currentContext, 98);
            CGContextMoveToPoint(currentContext, 0.0f, x+10);
            CGContextAddLineToPoint(currentContext, 123, x+10);
            CGContextStrokePath(currentContext);
            x+=10;
       // }else{
            CGContextSetLineWidth(currentContext, 78);
            CGContextMoveToPoint(currentContext, 0.0f, x);
            CGContextAddLineToPoint(currentContext, 123, x);
            CGContextStrokePath(currentContext);
            x+=80;
       // }
        
    }*/
    
    
//return a;
    
    
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
