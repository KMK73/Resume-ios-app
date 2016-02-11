//
//  ResumeViewController.h
//  kelsey-resume
//
//  Created by Kelsey Kjeldsen on 2/11/16.
//  Copyright © 2016 Kelsey Kjeldsen. All rights reserved.
//

#import <UIKit/UIKit.h>
//import for save pdf email compatability
#import <MessageUI/MFMailComposeViewController.h>

@interface ResumeViewController : UIViewController <MFMailComposeViewControllerDelegate> {
    
    NSArray *paths;
}

@property (weak, nonatomic) IBOutlet UIWebView *resumeWebView;

- (IBAction)backToHomepage:(id)sender;

- (IBAction)saveButtonPressed:(id)sender;

@end
