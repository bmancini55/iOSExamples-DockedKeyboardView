//
//  ViewController.m
//  KeyboardInputView
//
//  Created by Brian Mancini on 10/3/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import "ViewController.h"
#import "VieWController2.h"

@interface ViewController ()

@property (strong, nonatomic) UIButton *button;

@end

@implementation ViewController

- (void) loadView {
    [super loadView];
    
    self.title = @"Main";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIBarButtonItem *nextButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(didTouchAdd)];
    self.navigationItem.rightBarButtonItem = nextButton;
}

-(void)didTouchAdd {
    ViewController2 *viewController2 = [[ViewController2 alloc]init];
    
    // When presented as navigation, it's busted up
    [self showViewController:viewController2 sender:self];
    
    // When presented modally, it works fine...
    //[self presentViewController:viewController2 animated:true completion:nil];
}

@end
