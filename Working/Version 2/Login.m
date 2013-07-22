//
//  Login.m
//  Version 2
//
//  Created by Wenzel Jay Tubalde on 7/22/13.
//  Copyright (c) 2013 Openkit. All rights reserved.
//

#import "Login.h"

@interface Login (){
    
    NSMutableArray *arrayOfData;
    sqlite3 *dataDB;
    NSString *dbPathString;
}

@end

@implementation Login


/*- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createOrOpenDB];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)createOrOpenDB
{
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathString = [docPath stringByAppendingPathComponent:@"FINALDB.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathString]) {
        const char *dbPath = [dbPathString UTF8String];
        
        if (sqlite3_open(dbPath, &dataDB)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS PLANS (PLANID INTEGER PRIMARY KEY AUTOINCREMENT, PLANNAME TEXT, STARTDATE INTEGER, ENDINGDATE INTEGER,COST REAL, KWUSED INTEGER, DISCOUNTS INTEGER)";
            const char *sql_stmt2 = "CREATE TABLE IF NOT EXISTS POSITIONS (COMPONENTID INTEGER PRIMARY KEY, COMPONENT TEXT, COMPONENTX INTEGER, COMPONENTY INTEGER)";
            const char *sql_stmt3 = "CREATE TABLE IF NOT EXISTS USERS (USERID INTEGER PRIMARY KEY, USERNAME TEXT, PASSWORD TEXT)";
            sqlite3_exec(dataDB, sql_stmt, NULL, NULL, &error);
            sqlite3_exec(dataDB, sql_stmt2, NULL, NULL, &error);
            sqlite3_exec(dataDB, sql_stmt3, NULL, NULL, &error);
            sqlite3_close(dataDB);

        }
    }
}

- (IBAction)loginbutton:(id)sender {
    
    NSString *uname = _usernameField.text;
    NSString *pword = _passwordField.text;
    sqlite3_stmt *statement;
    
    
    
    
    if(sqlite3_open([dbPathString UTF8String], &dataDB)==SQLITE_OK){
        [arrayOfData removeAllObjects];
        
        NSString *nsquery = [[NSString alloc] initWithFormat:@"SELECT * FROM USERS WHERE PLANNAME = '%@'",uname];
        const char* query_sql = [nsquery UTF8String];
        
        
        if(sqlite3_prepare(dataDB, query_sql, -1, &statement, NULL)==SQLITE_OK){
            while (sqlite3_step(statement)==SQLITE_ROW) {
                NSString *userName = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 1)];
                NSString *passWord = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                
            }
        }
        
      
    }
    
    
    
    /*if (check username is in table == success)
    {
        //encrypt the password entered compare and check for password is true for the username in table
        if(check password is in table= password found success)
        {
            // Successfully logged in
        }
        else
        {
            //alert "Password Incorrect"
        }
    }
    else
    {
        // Alert "Username not found"
    }*/
}
@end
