//
//  SkillsViewController.m
//  kelsey-resume
//
//  Created by Kelsey Kjeldsen on 2/11/16.
//  Copyright © 2016 Kelsey Kjeldsen. All rights reserved.
//

#import "SkillsViewController.h"

@interface SkillsViewController ()

@end

@implementation SkillsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self setupProgress]; //run setup progress function
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) setupProgress {
    // Reset everything and start moving the progressbar
    
    //start count at 0
    progressCount = 0.0;
    
    progressTimer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                             target:self
                                           selector:@selector(updateProgress)
                                           userInfo:nil
                                            repeats:YES];
    //HTML & CSS SETUP FOR PROGRESS BAR ***************************
    [htmlProgress setProgress:htmlPercentage];
    //adjust the height of the bar
    [htmlProgress setTransform:CGAffineTransformMakeScale(1.0, 4.0)];
    
    //AXURE SETUP FOR PROGRESS BAR ***************************
    [axureProgress setProgress:axurePercentage];
    [axureProgress setTransform:CGAffineTransformMakeScale(1.0, 4.0)];

    //sketch SETUP FOR PROGRESS BAR ***************************
    [sketchProgress setProgress:sketchPercentage];
    [sketchProgress setTransform:CGAffineTransformMakeScale(1.0, 4.0)];

    //business SETUP FOR PROGRESS BAR ***************************
    [businessProgress setProgress:businessPercentage];
    [businessProgress setTransform:CGAffineTransformMakeScale(1.0, 4.0)];
    
    //ios SETUP FOR PROGRESS BAR ***************************
    [iosProgress setProgress:iosPercentage];
    [iosProgress setTransform:CGAffineTransformMakeScale(1.0, 4.0)];
    
    //web dev SETUP FOR PROGRESS BAR ***************************
    [webDevProgress     setProgress:webDevPercentage];
    [webDevProgress     setTransform:CGAffineTransformMakeScale(1.0, 4.0)];

}

- (void) updateProgress {

    progressCount += 0.05; //increment by 5mil sec
   
    //NSLog(@"%f html",htmlPercentage);
    
    htmlPercentage += 0.05;
    //SET HTML TO 85%
    if (htmlPercentage <= .85) {
        [htmlProgress setProgress:htmlPercentage];
    }
    
    axurePercentage += 0.05;
    //SET axure TO 98%
    if (axurePercentage <= .95) {
        [axureProgress setProgress:axurePercentage];
    }
    
    //sketch
    sketchPercentage += 0.05;
    //SET sketch TO 70%
    if (sketchPercentage <= .70) {
        [sketchProgress setProgress:sketchPercentage];
    }
    
    //business
    businessPercentage += 0.05;
    //SET business TO 80%
    if (businessPercentage <= .8) {
        [businessProgress setProgress:businessPercentage];
    }
    
    //ios
    iosPercentage += 0.05;
    //SET ios TO 50%
    if (iosPercentage <= .50) {
        [iosProgress   setProgress:iosPercentage];
    }
    
    //web dev
    webDevPercentage += 0.05;
    //SET web dev TO 65%
    if (webDevPercentage <= .60) {
        [webDevProgress    setProgress:webDevPercentage];
    }
    
    //INVALIDATE TIMER AFTER 1
    if(progressCount >= 1) {
        [progressTimer invalidate]; // stops timer, removes the method from the loop.
    }
    
    
}



- (IBAction)backToHomepage:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
//
//-(void) setProgress


@end
