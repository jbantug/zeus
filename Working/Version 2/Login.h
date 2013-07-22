//
//  Login.h
//  Version 2
//
//  Created by Wenzel Jay Tubalde on 7/22/13.
//  Copyright (c) 2013 Openkit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sqlite3.h"
#import "mydata.h"

@interface Login : UIViewController<UITableViewDataSource, UITableViewDelegate>


- (IBAction)loginbutton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UILabel *label;




@end
