//
//  CardsAppDelegate.h
//  Cards
//
//  Created by Leon Coto on 22/04/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ScrollViewController;
@interface CardsAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScrollViewController *viewController;

@end
