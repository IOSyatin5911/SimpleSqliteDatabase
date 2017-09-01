//
//  ViewController.h
//  demoSqlite
//
//  Created by user11 on 1/23/17.
//  Copyright © 2017 user11. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtNo;
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtDepartment;
@property (weak, nonatomic) IBOutlet UITextField *txtYear;
- (IBAction)btnSave:(id)sender;


@end

