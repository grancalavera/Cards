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
    UIImageView *cardImage;
    UILabel *cardName;
}

@property (nonatomic, retain) IBOutlet UIImageView *cardImage;
@property (nonatomic, retain) IBOutlet UILabel *cardName;
- (void) setCardWithObject:(NSObject *) object;

@end
