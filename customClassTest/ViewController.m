//
//  ViewController.m
//  customClassTest
//
//  Created by FUJITA YASUO on 2014/07/13.
//  Copyright (c) 2014年 FUJITA YASUO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *catField;
@property (weak, nonatomic) IBOutlet UILabel *humanField;
- (IBAction)calc:(id *)sender;
- (double) catAgeToHumanAge: (double)catAge;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calc:(id *)sender {
  double catAge = [_catField.text doubleValue];
  double humanAge = [self catAgeToHumanAge:catAge];

  NSString* ans = [NSString stringWithFormat:@"%.1f", humanAge];
  _humanField.text = ans;
}

- (double) catAgeToHumanAge: (double)catAge {
  double age;
  
  if (catAge <= 1) {
    age = 20 * catAge;
  } else if (catAge <= 5) {
    age = catAge * 6 + 15;
  }
  
  return age;
}


@end
