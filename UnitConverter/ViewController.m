//
//  ViewController.m
//  UnitConverter
//
//  Created by Benedicte Karlsen on 13.07.2016.
//  Copyright © 2016 Hello World Corporation. All rights reserved.
//

#import "ViewController.h"

double convertUnitOneToUnitTwo(double unitOneValue) {
    double unitTwoValue;
    unitTwoValue = 10* unitOneValue + 2;
    return unitTwoValue;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)UpdateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    NSString *userInput = self.inputField.text;
    double userInput2 = [userInput doubleValue];
    userInput2 += 999;
    [buf appendString:@"Hello"];
//    double userInput = [self.inputField.text doubleValue];
//    
//    if(self.segmentController.selectedSegmentIndex == 0) {
//        double unitTwoValue = convertUnitOneToUnitTwo(userInput);
//        [buf appendString: [@(unitTwoValue) stringValue]];
//    } else if(self.segmentController.selectedSegmentIndex == 1) {
//        [buf appendString: @"unit three"];
//    } else {
//        [buf appendString: @"unit four"];
//    }
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
