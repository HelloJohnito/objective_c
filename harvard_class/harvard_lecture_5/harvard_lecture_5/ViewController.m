//
//  ViewController.m
//  harvard_lecture_5
//
//  Created by John  Ito lee on 10/14/18.
//  Copyright © 2018 Johnito. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
@private
    BOOL didInitialize; // local variable 
}
@end

@implementation ViewController

@synthesize account = _account;
@synthesize amount = _amount;
@synthesize depositLabel = _depositLabel;
@synthesize balanceLabel = _balanceLabel;

- (IBAction)clear:(id)sender {
    self.amount = 0;
    [self show];
}

- (IBAction)deposit:(id)sender {
    self.account.balance += self.amount;
    NSLog(@"%@", self.account);
    NSLog(@"%lld", self.amount);
    NSLog(@"%lld", self.account.balance);
    
    self.amount = 0;
    [self show];
}

- (IBAction)digit:(id)sender {
    UIButton *b = (UIButton *)sender;
    self.amount = self.amount * 10 + b.tag;
    [self show];
}


// Not working: https://stackoverflow.com/questions/11973054/initwithnibname-method-in-storyboard
//- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
//    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
//        NSLog(@"Enter");
//        self.account = [[Account alloc] init];
//    }
//    NSLog(@"Enter");
//    return self;
//}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Custom initialization
        self.account = [[Account alloc] init];
        NSLog(@"ENTER");
    }
    return self;
}



- (void) show{
    self.balanceLabel.text = [NSString stringWithFormat:@"$%lld", self.account.balance];
    self.depositLabel.text = [NSString stringWithFormat:@"$%lld", self.amount];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if(didInitialize == NO){
        didInitialize = YES;
        self.account = [[Account alloc] init];
    }
//    NSLog(didInitialize ? @"Yes" : @"No");
    [self show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
