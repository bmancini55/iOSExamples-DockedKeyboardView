//
//  TableViewController.m
//  KeyboardInput
//
//  Created by Brian Mancini on 10/5/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import "TableViewController.h"
#import "CustomTableView.h"

@interface TableViewController ()

@property (strong, nonatomic) CustomTableView *tableView;

@end

@implementation TableViewController

// Override loadView so we can use CustomTableView that implements
// inputAccessoryView. Also set the tableView as the first responder
// so that it displays the inputAccessoryView on load.
- (void)loadView {
    self.title = @"TableView";
    
    self.tableView = [[CustomTableView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.tableView.backgroundColor = [UIColor whiteColor];
    [self.tableView becomeFirstResponder];
    
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(didTouchView)];
    [self.view addGestureRecognizer:recognizer];
}


// Dissmiss the keyboard on tableView touches by making
// the view the first responder
- (void)didTouchView {
    [self.tableView becomeFirstResponder];
}

#pragma Table View Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *reuseIdentifier = @"table";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if(!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%lu", indexPath.row];
    return cell;
}

#pragma Check dealloc

// This view will successfully deallocate
- (void)dealloc {
    NSLog(@"TableViewController:dealloc");
}

@end
