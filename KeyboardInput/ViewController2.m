//
//  ViewController2.m
//  KeyboardInputView
//
//  Created by Brian Mancini on 10/3/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import "ViewController2.h"
#import "InputAccessoryView.h"
#import "InputAccessoryViewController.h"

@interface ViewController2 ()

@property (nonatomic, readwrite, retain) UIView *inputAccessoryView;

@end

@implementation ViewController2

- (void)loadView {
    NSLog(@"ViewController2:loadView");
    [super loadView];
    
    self.title = @"Input";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(didTouchView)];
    [self.view addGestureRecognizer:recognizer];
    
    _inputAccessoryView = [[InputAccessoryView alloc]init];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];    
}

- (void)didTouchView {
    NSLog(@"Should close");
    [self becomeFirstResponder];
    
    // When dismissed as a modal it deallocs fine
    //[self dismissViewControllerAnimated:true completion:nil];
}

- (bool) canBecomeFirstResponder {
    return true;
}



- (UIView *)inputAccessoryView {
    NSLog(@"ViewController2:inputAccessoryView");
    return _inputAccessoryView;
}

- (void)reloadInputViews {
    NSLog(@"ViewController2:reloadInputViews");
    if(_inputAccessoryView) {
        _inputAccessoryView = nil;
        _inputAccessoryView = [[InputAccessoryView alloc]init];
    }
    [super reloadInputViews];
}

- (void)dealloc {
    NSLog(@"ViewController2:delloc!!!!!!!!!!!!!!!");
}

@end
