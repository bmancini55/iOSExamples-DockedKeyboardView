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
    
    // Pass the current controller as the keyboardBarDelegate
    ((CustomView *)self.view).keyboardBarDelegate = self;
    
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(didTouchView)];
    [self.view addGestureRecognizer:recognizer];
}


#pragma KeyboardBarDelegate

// Handle keyboard bar event by creating an alert that contains
// the text from the keyboard bar. In reality, this would do something more useful
- (void)keyboardBar:(KeyboardBar *)keyboardBar sendText:(NSString *)text {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Keyboard Text" message:text delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
    [alert show];
}


#pragma Check dealloc

// Dismiss the keyboard on view touches by making
// the view the first responder
- (void)didTouchView {
    [self.view becomeFirstResponder];
}


// This view will successfully deallocate
- (void)dealloc {
    NSLog(@"ViewController:delloc");
}

@end
