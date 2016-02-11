//
//  SkillsViewController.h
//  kelsey-resume
//
//  Created by Kelsey Kjeldsen on 2/11/16.
//  Copyright © 2016 Kelsey Kjeldsen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SkillsViewController : UIViewController {
    
    NSTimer *progressTimer;
    CGFloat progressCount;
    
    CGFloat htmlPercentage; //progress percentage for html skill
    CGFloat axurePercentage; //progress percentage for html skill
    CGFloat sketchPercentage; //progress percentage for html skill
    CGFloat businessPercentage; //progress percentage for html skill
    CGFloat iosPercentage; //progress percentage for html skill
    CGFloat webDevPercentage; //progress percentage for html skill

    IBOutlet UIProgressView *htmlProgress;
    IBOutlet UIProgressView *axureProgress;
    IBOutlet UIProgressView *sketchProgress;
    IBOutlet UIProgressView *businessProgress;
    IBOutlet UIProgressView *iosProgress;
    IBOutlet UIProgressView *webDevProgress;
}

- (IBAction)backToHomepage:(id)sender;

//@property (weak, nonatomic) IBOutlet UIProgressView *htmlProgressBar;
//timer for progress bars
//@property (nonatomic, strong) NSTimer *progressTimer;


@end
