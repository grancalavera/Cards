//
//  ScrollViewController.h
//  Cards
//
//  Created by Leon Coto on 22/04/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ScrollViewController : UIViewController <UIScrollViewDelegate> 
{
    UIScrollView *scrollView;
}

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@end