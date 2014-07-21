//
//  ViewController.m
//  RSMorphingLabel
//
//  Created by closure on 7/20/14.
//  Copyright (c) 2014 closure. All rights reserved.
//

#import "ViewController.h"
#import "RSMorphingLabel.h"

@interface ViewController ()
@property (nonatomic, strong, readonly) NSString *text;
@property (nonatomic, assign, readonly) NSInteger i;
@property (weak, nonatomic) IBOutlet RSMorphingLabel *label;
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

- (NSString *)text {
    NSArray *textArray = @[@"Swift", @"Objective-C", @"iPhone", @"iPad", @"Mac Mini", @"MacBook Pro", @"Mac Pro", @"iMac", @"MacBook Air"];
    if (_i >= [textArray count]) {
        _i = 0;
    }
    return textArray[_i++];
}


- (IBAction)buttonPressed:(id)sender {
    [_label setText:[self text]];
}
@end
