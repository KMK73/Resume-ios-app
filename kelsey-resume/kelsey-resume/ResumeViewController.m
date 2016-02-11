//
//  ResumeViewController.m
//  kelsey-resume
//
//  Created by Kelsey Kjeldsen on 2/11/16.
//  Copyright © 2016 Kelsey Kjeldsen. All rights reserved.
//

#import "ResumeViewController.h"

@interface ResumeViewController ()

@end

@implementation ResumeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *Path = [[NSBundle mainBundle] pathForResource:@"Kelsey Kjeldsen Resume" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:Path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.resumeWebView loadRequest:request];
    
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

- (IBAction)backToHomepage:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];

}
     
     
@end
