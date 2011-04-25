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
    NSString *cardInfo;
    UILabel *_cardInfoLabel;
}
@property (nonatomic, retain) IBOutlet UILabel *cardInfoLabel;
@property (nonatomic, assign) id <CardInfoDelegate> delegate;
@property (nonatomic, retain) NSString *cardInfo;
@end

@protocol CardInfoDelegate
-(void)cardInfoViewControllerDidFinish:(CardInfoViewController *)controller;
@end