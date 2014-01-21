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
@property (nonatomic, strong) NSString  *styleApplied; // will hold the current applied text style

- (IBAction)applyHeadlineStyle:(id)sender;
- (IBAction)applySubHeadStyle:(id)sender;
- (IBAction)applyBodyStyle:(id)sender;
- (IBAction)applyFootnoteStyle:(id)sender;
- (IBAction)applyCaption1Style:(id)sender;
- (IBAction)applyCaption2Style:(id)sender;
- (IBAction)toggleImage:(id)sender;


- (void)textSizeChangedWithNotification:(NSNotification *)notification;
- (void)applyStyleToSelection:(NSString *)style;

@end

@implementation SPZFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Add observer for text change notification
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(textSizeChangedWithNotification)
                                                 name:UIContentSizeCategoryDidChangeNotification
                                               object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)applyHeadlineStyle:(id)sender {
//    [_textView setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleHeadline]];
//    _styleApplied = UIFontTextStyleHeadline;
    [self applyStyleToSelection:UIFontTextStyleHeadline];
}

- (IBAction)applySubHeadStyle:(id)sender {
//    [_textView setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline]];
//    _styleApplied = UIFontTextStyleSubheadline;
    [self applyStyleToSelection:UIFontTextStyleSubheadline];
}

- (IBAction)applyBodyStyle:(id)sender {
//    [_textView setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
//    _styleApplied = UIFontTextStyleBody;
    [self applyStyleToSelection:UIFontTextStyleBody];
}

- (IBAction)applyFootnoteStyle:(id)sender {
//    [_textView setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleFootnote]];
//    _styleApplied = UIFontTextStyleFootnote;
    [self applyStyleToSelection:UIFontTextStyleFootnote];
}

- (IBAction)applyCaption1Style:(id)sender {
//    [_textView setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption1]];
//    _styleApplied = UIFontTextStyleCaption1;
    [self applyStyleToSelection:UIFontTextStyleCaption1];
}

- (IBAction)applyCaption2Style:(id)sender {
//    [_textView setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption2]];
//    _styleApplied = UIFontTextStyleCaption2;
    [self applyStyleToSelection:UIFontTextStyleCaption2];
}

- (IBAction)toggleImage:(id)sender {
    // TODO: code to toggle image
}

- (void)textSizeChangedWithNotification:(NSNotification *)notification
{
    [_textView setFont:[UIFont preferredFontForTextStyle:_styleApplied]];
}

- (void)applyStyleToSelection:(NSString *)style
{
    // Get the range selected in the textView
    NSRange range = [_textView selectedRange];
    
    // Create a new font with the selected style
    UIFont *styledFont = [UIFont preferredFontForTextStyle:style];
    
    // Begin editing the text storage property of the textView
    [_textView.textStorage beginEditing];
    
    // Create a dictionary with the new font as the value
    // and the NSFontAttributeName property as a key
    NSDictionary *dict = @{NSFontAttributeName : styledFont};
    
    // Assign the new attributes to the text storage object
    [_textView.textStorage setAttributes:dict range:range];
    
    // End editing the text storage property
    [_textView.textStorage endEditing];
}

@end
