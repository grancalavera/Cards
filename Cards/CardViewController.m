//
//  CardViewController.m
//  Cards
//
//  Created by Leon Coto on 23/04/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CardViewController.h"

static NSString *cardNameKey = @"cardName";
static NSString *cardImageKey = @"cardFile";

@implementation CardViewController
@synthesize cardImageView;

- (void) setCardWithObject:(NSObject *)object
{
    self.cardImageView.image = [UIImage imageNamed:[object valueForKey:cardImageKey]];
    cardName = [object valueForKey:cardNameKey];
}

- (void)dealloc
{
    [cardImageView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    cardName = nil;
    [self setCardImageView:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
