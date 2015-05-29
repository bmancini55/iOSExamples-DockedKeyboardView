//
//  CustomTableView.h
//  KeyboardInput
//
//  Created by Brian Mancini on 10/5/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KeyboardBar.h"

@interface CustomTableView : UITableView

@property (weak, nonatomic) id<KeyboardBarDelegate> keyboardBarDelegate;

@end
