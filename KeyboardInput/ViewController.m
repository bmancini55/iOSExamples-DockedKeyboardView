//
//  ViewController.m
//  KeyboardInputView
//
//  Created by Brian Mancini on 10/3/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()

@property (strong, nonatomic) CustomView *view;

@end

@implementation ViewController

// Override loadView so we can use CustomView that implements
// inputAccessoryView. Also set the view as the first responder
// so that it displays the inputAccessoryView on load.
- (void)loadView {
    self.title = @"View";
        
    self.view = [[CustomView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view becomeFirstResponder];
    
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(didTouchView)];
    [self.view addGestureRecognizer:recognizer];
}


// Dissmiss the keyboard on view touches by making
// the view the first responder
- (void)didTouchView {
    [self.view becomeFirstResponder];
}


// This view will successfully deallocate
- (void)dealloc {
    NSLog(@"ViewController:delloc");
}

@end
