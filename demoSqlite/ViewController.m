//
//  ViewController.m
//  demoSqlite
//
//  Created by user11 on 1/23/17.
//  Copyright © 2017 user11. All rights reserved.


#import "ViewController.h"
#import "DBManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)
nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnSave:(id)sender {
    
    BOOL success = YES;
    NSString *alertString = @"Data Insertion failed";
    if (_txtNo.text.length>0 &&_txtName.text.length>0 &&
        _txtDepartment.text.length>0 &&_txtYear.text.length>0 )
    {
        success = [[DBManager getSharedInstance]saveData:
                   _txtNo.text name:_txtName.text department:
                   _txtDepartment.text year:_txtYear.text];
        
        
    }
    else{
        
        alertString = @"Enter all fields";
    }
    if (success == NO) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:
                              alertString message:nil
                                                      delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    else{
        
        NSLog(@"Data Save Successfully");
    }
}


@end
