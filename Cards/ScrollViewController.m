//
//  ScrollViewController.m
//  Cards
//
//  Created by Leon Coto on 22/04/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ScrollViewController.h"
#import "CardViewController.h"

@implementation ScrollViewController
@synthesize scrollView;

- (void)dealloc
{
    [scrollView release];
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
    
    NSString *cardsPath = [[NSBundle mainBundle] pathForResource:@"cards" ofType:@"plist"];
    NSArray *cards = [NSArray arrayWithContentsOfFile:cardsPath];

    int numberOfCards = [cards count];

    scrollView.pagingEnabled = YES;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.scrollsToTop = NO;
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * numberOfCards, scrollView.frame.size.height);
    
    for (int i=0; i < numberOfCards; i++) 
    {
        CardViewController *aCardController = [CardViewController alloc];
        [scrollView addSubview:aCardController.view];
        CGRect frame = scrollView.frame;
        frame.origin.x = frame.size.width * i;
        frame.origin.y = 0;
        aCardController.view.frame = frame;
        [aCardController setCardWithObject:[cards objectAtIndex:i]];
        [aCardController release];
    }
}

- (void)viewDidUnload
{
    [self setScrollView:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
