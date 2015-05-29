//
//  CustomView.h
//  KeyboardInput
//
//  Created by Brian Mancini on 10/4/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KeyboardBar.h"

@interface CustomView : UIView

@property (weak, nonatomic) id<KeyboardBarDelegate> keyboardBarDelegate;

@end
