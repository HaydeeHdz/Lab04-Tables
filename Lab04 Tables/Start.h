//
//  ViewController.h
//  Lab04 Tables
//
//  Created by Haydee on 6/21/16.
//  Copyright © 2016 Haydee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Intro.h"

@interface Start : UIViewController<UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) IBOutlet UIButton *btnSkip;
- (IBAction)btnSkipPressed:(id)sender;

@end

