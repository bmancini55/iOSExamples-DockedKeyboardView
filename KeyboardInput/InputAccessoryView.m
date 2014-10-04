//
//  InputAccessoryView.m
//  KeyboardInputView
//
//  Created by Brian Mancini on 10/4/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import "InputAccessoryView.h"

@implementation InputAccessoryView

- (id)init {
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect frame = CGRectMake(0,0, CGRectGetWidth(screen), 40);
    self = [self initWithFrame:frame];
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if(self) {
        
        self.backgroundColor = [UIColor colorWithRed:200/255.f green:200/255.f blue:200/255.f alpha:1.0f];
        
        UITextView *text = [[UITextView alloc]initWithFrame:CGRectInset(frame, 10, 5)];
        text.backgroundColor = [UIColor colorWithRed:1.f green:1.f blue:1.f alpha:1.f];
        [self addSubview:text];
        self.textView = text;
    }
    return self;
}

- (void)dealloc {
    NSLog(@"InputAccessoryView:dealloc");
}

@end
