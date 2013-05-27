//
//  FirstViewController.m
//  line
//
//  Created by 謝至騏 on 13/1/7.
//  Copyright (c) 2013年 謝至騏. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemUndo
                                 target:self
                                 action:@selector(myAction)];
    self.navigationItem.rightBarButtonItem = rightButton;
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)myAction{



}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
