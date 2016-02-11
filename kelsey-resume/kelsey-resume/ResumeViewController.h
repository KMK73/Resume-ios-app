//
//  ResumeViewController.h
//  kelsey-resume
//
//  Created by Kelsey Kjeldsen on 2/11/16.
//  Copyright © 2016 Kelsey Kjeldsen. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ResumeViewController : UIViewController {
    
    NSArray *paths;
}

@property (weak, nonatomic) IBOutlet UIWebView *resumeWebView;

- (IBAction)backToHomepage:(id)sender;

@end
