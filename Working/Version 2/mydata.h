//
//  mydata.h
//  Version 2
//
//  Created by Wenzel Jay Tubalde on 6/27/13.
//  Copyright (c) 2013 Openkit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface mydata : NSObject


@property(nonatomic, strong)NSString *username;
@property(nonatomic, strong)NSString *password;
@property(nonatomic, strong)NSString *planName;
@property(nonatomic, strong)NSString *startDate;
@property(nonatomic, strong)NSString *endDate;
@property(nonatomic, strong)NSString *person;
@property(assign)float cost;
@property(assign)float positionY;
@property(assign)float kwUsed;
@property(assign)int discount;
@property(assign)int testval;
@property(nonatomic, strong)NSString *details;


@end
