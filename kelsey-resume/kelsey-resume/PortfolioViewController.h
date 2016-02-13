//
//  PortfolioViewController.h
//  kelsey-resume
//
//  Created by Kelsey Kjeldsen on 2/11/16.
//  Copyright © 2016 Kelsey Kjeldsen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResumeViewController.h"

@interface PortfolioViewController : UIViewController {
    
    NSTimer *loadingTimer; //timer for loading screen of portfolio
}

@property (weak, nonatomic) IBOutlet UIWebView *portfolioWebView;

- (IBAction)backToHomepage:(id)sender;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadingSpinner;


@end
