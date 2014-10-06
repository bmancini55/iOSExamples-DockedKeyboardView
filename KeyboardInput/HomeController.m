//
//  HomeController.m
//  KeyboardInput
//
//  Created by Brian Mancini on 10/6/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import "HomeController.h"
#import "ViewController.h"
#import "TableViewController.h"

@interface HomeController ()

@property (strong, nonatomic) UIButton *button1;
@property (strong, nonatomic) UIButton *button2;

@end

@implementation HomeController

- (void)loadView {
    [super loadView];
    
    self.title = @"Home";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.button1 = [[UIButton alloc]initWithFrame:CGRectMake(20, 100, CGRectGetWidth(self.view.frame) - 40, 40)];
    self.button1.translatesAutoresizingMaskIntoConstraints = NO;
    self.button1.backgroundColor = [UIColor colorWithWhite:0.5f alpha:1.0f];
    self.button1.layer.cornerRadius = 2.0;
    self.button1.layer.borderWidth = 1.0;
    self.button1.layer.borderColor = [[UIColor colorWithWhite:0.45 alpha:1.0f] CGColor];
    [self.button1 setTitle:@"UIViewController Example" forState:UIControlStateNormal];
    [self.button1 addTarget:self action:@selector(showViewExample) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button1];
    
    self.button2 = [[UIButton alloc]initWithFrame:CGRectMake(20, 150, CGRectGetWidth(self.view.frame) - 40, 40)];
    self.button2.translatesAutoresizingMaskIntoConstraints = NO;
    self.button2.backgroundColor = [UIColor colorWithWhite:0.5f alpha:1.0f];
    self.button2.layer.cornerRadius = 2.0;
    self.button2.layer.borderWidth = 1.0;
    self.button2.layer.borderColor = [[UIColor colorWithWhite:0.45f alpha:1.0f] CGColor];
    [self.button2 setTitle:@"UITableViewController Example" forState:UIControlStateNormal];
    [self.button2 addTarget:self action:@selector(showTableViewExample) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button2];
    
}

- (void)showViewExample {
    ViewController *controller = [[ViewController alloc]init];
    [self.navigationController pushViewController:controller animated:true];
}

- (void)showTableViewExample {
    TableViewController *controller = [[TableViewController alloc]init];
    [self.navigationController pushViewController:controller animated:true];
}

@end
