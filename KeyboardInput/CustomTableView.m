//
//  CustomTableView.m
//  KeyboardInput
//
//  Created by Brian Mancini on 10/5/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import "CustomTableView.h"
#import "KeyboardBar.h"

@interface CustomTableView()

// Override inputAccessoryView to readWrite
@property (nonatomic, readwrite, retain) UIView *inputAccessoryView;

@end

@implementation CustomTableView

// Override canBecomeFirstResponder
// to allow this view to be a responder
- (bool) canBecomeFirstResponder {
    return true;
}

// Override inputAccessoryView to use
// an instance of KeyboardBar
- (UIView *)inputAccessoryView {
    if(!_inputAccessoryView) {
        _inputAccessoryView = [[KeyboardBar alloc] initWithDelegate:self.keyboardBarDelegate];
    }
    return _inputAccessoryView;
}

@end
