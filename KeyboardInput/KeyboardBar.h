//
//  KeyboardBar.h
//  KeyboardInputView
//
//  Created by Brian Mancini on 10/4/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KeyboardBar;

@protocol KeyboardBarDelegate <NSObject>

- (void)keyboardBar:(KeyboardBar *)keyboardBar sendText:(NSString *)text;

@end

@interface KeyboardBar : UIView

- (id)initWithDelegate:(id<KeyboardBarDelegate>)delegate;

@property (strong, nonatomic) UITextView *textView;
@property (strong, nonatomic) UIButton *actionButton;
@property (weak, nonatomic) id<KeyboardBarDelegate> delegate;

@end
