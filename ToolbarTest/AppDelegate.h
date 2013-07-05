//
//  AppDelegate.h
//  ToolbarTest
//
//  Created by Frances Wolanczyk on 6/20/13.
//  Copyright (c) 2013 Frances Wolanczyk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;


@interface AppDelegate : NSObject <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
//@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;

@end
