//
//  ViewController.h
//  harvard_lecture_5
//
//  Created by John  Ito lee on 10/14/18.
//  Copyright © 2018 Johnito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Account.h"

@interface ViewController : UIViewController

@property(nonatomic, readwrite, strong) Account *account;
@property(nonatomic, assign) unsigned long long amount;
@property(nonatomic, readwrite, weak) IBOutlet UILabel *depositLabel;
@property(nonatomic, readwrite, weak) IBOutlet UILabel *balanceLabel;

- (IBAction)clear:(id)sender;
- (IBAction)deposit:(id)sender;
- (IBAction)digit:(id)sender;


@end

