//
//  ViewController.m
//  ToolbarTest
//
//  Created by Frances Wolanczyk on 6/20/13.
//  Copyright (c) 2013 Frances Wolanczyk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (nonatomic, retain) IBOutlet UIToolbar *myToolbar;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self setupToolbar];
    NSLog(@"view is %@",self.view.class);
    NSLog(@"%d",[self.view isKindOfClass:[UITableView class]]);
    NSLog(@"nav controller is %@",self.navigationController.class);
    
    [self.navigationController setToolbarHidden:NO animated:YES];
    NSLog(@"tool bar hidden? %d",[self.navigationController isToolbarHidden]);

}

-(void)setupToolbar
{
    // Toolbar
    NSString* addTitle = NSLocalizedString(@"Add", @"Add title");
    
    UIBarButtonItem* add = [[UIBarButtonItem alloc] initWithTitle:addTitle style:UIBarButtonItemStyleBordered target:self action:@selector(addService)];
    UIBarButtonItem* space2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    NSArray* toolbarItems = [NSArray arrayWithObjects:add, space2, nil];
    [self setToolbarItems:toolbarItems animated:YES];
 //   [self.myToolbar setItems:toolbarItems animated:NO];
}

- (void)addService{
    NSLog(@"add service");

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
