//
//  CardInfoView.m
//  Cards
//
//  Created by Leon Coto on 24/04/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CardInfoViewController.h"

@implementation CardInfoViewController
@synthesize cardInfoLabel = _cardInfoLabel;
@synthesize delegate = _delegate;
@synthesize cardInfo = _cardInfo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];

}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.cardInfoLabel.text = self.cardInfo;
}

- (void)viewDidUnload
{
    [self setCardInfoLabel:nil];
    [self setDelegate:nil];
    [self setCardInfo:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.delegate cardInfoViewControllerDidFinish:self];
}

@end
