//
//  CardInfoView.h
//  Cards
//
//  Created by Leon Coto on 24/04/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CardInfoDelegate;

@interface CardInfoViewController : UIViewController {

}
- (IBAction)done:(id)sender;
@property (nonatomic, assign) id <CardInfoDelegate> delegate;
@end

@protocol CardInfoDelegate
-(void)cardInfoViewControllerDidFinish:(CardInfoViewController *)controller;
@end