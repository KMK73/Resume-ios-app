//
//  ContactViewController.h
//  kelsey-resume
//
//  Created by Kelsey Kjeldsen on 2/12/16.
//  Copyright © 2016 Kelsey Kjeldsen. All rights reserved.
//

#import <UIKit/UIKit.h>
//import for save pdf email compatability
#import <MessageUI/MFMailComposeViewController.h>

@interface ContactViewController : UIViewController <MFMailComposeViewControllerDelegate> {
    
}



// back button
- (IBAction)BackToHome:(id)sender;



@end
