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
    
    //HTML & CSS SETUP FOR PROGRESS BAR ***************************
    HTMLprogressCount = 0.0;
    [htmlProgress setProgress:HTMLprogressCount];
    progressTimer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                             target:self
                                           selector:@selector(updateProgress)
                                           userInfo:nil
                                            repeats:YES];
}

- (void) updateProgress {
    //HTML & CSS SETUP FOR PROGRESS BAR ***************************
    HTMLprogressCount += 0.05; //increment by 5mil sec
    NSLog(@"%f",HTMLprogressCount);
    
    [htmlProgress setProgress:HTMLprogressCount];
    //HTML SET TO 85%
    if(HTMLprogressCount >= 0.85) {
        [progressTimer invalidate]; // stops timer, removes the method from the loop.
    }
    
    
}



- (IBAction)backToHomepage:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
//
//-(void) setProgress


@end
