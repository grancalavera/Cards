//
//  CardViewController.h
//  Cards
//
//  Created by Leon Coto on 23/04/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CardViewController : UIViewController 
{
    UIImageView *cardImageView;
    NSString *cardName;
}

@property (nonatomic, retain) IBOutlet UIImageView *cardImageView;

- (void) setCardWithObject:(NSObject *) object;
- (IBAction)showInfo:(id)sender;


@end