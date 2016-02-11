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
    CGFloat HTMLprogressCount;
    
    IBOutlet UIProgressView *htmlProgress; 
}

- (IBAction)backToHomepage:(id)sender;

//@property (weak, nonatomic) IBOutlet UIProgressView *htmlProgressBar;
//timer for progress bars
//@property (nonatomic, strong) NSTimer *progressTimer;


@end
