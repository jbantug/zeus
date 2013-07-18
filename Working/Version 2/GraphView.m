//
//  GraphView.m
//  Graph1
//
//  Created by Gov on 7/9/13.
//  Copyright (c) 2013 Openkit. All rights reserved.
//

#import "GraphView.h"


@implementation GraphView
int x,y,width,z,p,year,i,py,h,g,a,r,f,test;
//int selection =2;
NSMutableArray *arrayOfData;
sqlite3 *dataDB;
NSString *dbPathString;



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
    [self fonts];
    [self testquery];
}

-(int)testquery{
    sqlite3_stmt *statementt;
    //result.text = searchField.text;
    
    if (sqlite3_open([dbPathString UTF8String],&dataDB)==SQLITE_OK) {
        [arrayOfData removeAllObjects];
        
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM POWERUSED WHERE RECORDID='1' "];
        const char* query_sql = [querySql UTF8String];
        
        if(sqlite3_prepare(dataDB, query_sql, -1, &statementt, NULL)==SQLITE_OK){
            while (sqlite3_step(statementt)==SQLITE_ROW) {
                NSString *PlanName = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementt, 2)];
                
                //_label.text = PlanName;
                test = [PlanName intValue];
                NSLog(@"%d", test);

            }
        }
    }
   
}


-(void)fonts{
    
    // int read = _bar();
    
    
    year=2011;
    y=100;
    for (i=0; i<=15; i++) {//YearFont
        
        [[UIColor lightGrayColor]set];
        if (i==2) {
            UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold"size:15.0f];
            NSString *myString = [NSString stringWithFormat:@"%d",year];
            [myString drawAtPoint:CGPointMake(45, y) withFont:helveticaBold];
            year++;
            y+=100;
            
        }else{
            UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold"size:15.0f];
            NSString *myString = [NSString stringWithFormat:@"%d",year];
            [myString drawAtPoint:CGPointMake(45, y) withFont:helveticaBold];
            year++;
            y+=80;
        }
    }
    py=110;
    for (i=0; i<=10; i++) {//SeasonFont
        
        [[UIColor blackColor]set];
        NSString *season1 = @"Summer";
        NSString *season2 = @"Autumn";
        NSString *season3 = @"Winter";
        NSString *season4 = @"Spring";
        if (i==3) {
            
            UIFont *fontstyle = [UIFont fontWithName:@"HelveticaNeue-Bold"size:15.0f];
            [season1 drawAtPoint:CGPointMake(130, py) withFont:fontstyle];
            py+=20;
            UIFont *fontstyle2 = [UIFont fontWithName:@"HelveticaNeue-Bold"size:30.0f];
            [season2 drawAtPoint:CGPointMake(130, py) withFont:fontstyle2];
            py+=40;
            UIFont *fontstyle3 = [UIFont fontWithName:@"HelveticaNeue-Bold"size:15.0f];
            [season3 drawAtPoint:CGPointMake(130, py) withFont:fontstyle3];
            py+=20;
            [season4 drawAtPoint:CGPointMake(130, py) withFont:fontstyle3];
            py+=20;
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
    
    x=150;
    z=120;
    y=110;
    //a=14350;
    
    for (p=0; p<=70;p++ ) {
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
        
        if (p==3) {
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
    
    
    return a;
    
    
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
