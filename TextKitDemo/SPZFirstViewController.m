//
//  SPZViewController.m
//  TextKitDemo
//
//  Created by Brad Woodard on 1/21/14.
//  Copyright (c) 2014 Spartz, Inc. All rights reserved.
//

#import "SPZFirstViewController.h"

@interface SPZFirstViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)applyHeadlineStyle:(id)sender;
- (IBAction)applySubHeadStyle:(id)sender;
- (IBAction)applyBodyStyle:(id)sender;
- (IBAction)applyFootnoteStyle:(id)sender;
- (IBAction)applyCaption1Style:(id)sender;
- (IBAction)applyCaption2Style:(id)sender;
- (IBAction)toggleImage:(id)sender;


@end

@implementation SPZFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)applyHeadlineStyle:(id)sender {
}

- (IBAction)applySubHeadStyle:(id)sender {
}

- (IBAction)applyBodyStyle:(id)sender {
}

- (IBAction)applyFootnoteStyle:(id)sender {
}

- (IBAction)applyCaption1Style:(id)sender {
}
- (IBAction)toggleImage:(id)sender {
}
@end
