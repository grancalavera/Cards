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
@synthesize cardImage;
@synthesize cardName;

- (void) setCardWithObject:(NSObject *)object
{
    self.cardImage.image = [UIImage imageNamed:[object valueForKey:cardImageKey]];
    self.cardName.text = [object valueForKey:cardNameKey];
}

- (void)dealloc
{
    [cardImage release];
    [cardName release];
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
    [self setCardImage:nil];
    [self setCardName:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
