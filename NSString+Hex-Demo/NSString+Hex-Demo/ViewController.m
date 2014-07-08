//
//  ViewController.m
//  NSString+Hex-Demo
//
//  Created by Benoit Sarrazin on 2014-07-08.
//  Copyright (c) 2014 Berzerker Design. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Hex.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    NSData *data = [textField.text hexValue];
    self.textView.text = data ? data.description : @"The hex string is invalid.";
    return YES;
}

@end
