//
//  PortfolioViewController.m
//  kelsey-resume
//
//  Created by Kelsey Kjeldsen on 2/11/16.
//  Copyright © 2016 Kelsey Kjeldsen. All rights reserved.
//

#import "PortfolioViewController.h"

@interface PortfolioViewController ()

@end

@implementation PortfolioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //set up portfolio site through webview
    [self.portfolioWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://kelseykjeldsen.com/portfolio"]]];
    [self.portfolioWebView addSubview:self.loadingSpinner];//link the webview with the indicator
    
    loadingTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/2.0 target:self selector:@selector(loadingPage) userInfo:nil repeats:YES];
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

- (void) loadingPage {
    
    //if its not loading stop animating, or else keep animating
    if (!self.portfolioWebView.loading) {
        //if no more loading to do stop animating
        [self.loadingSpinner stopAnimating];
    } else {
        [self.loadingSpinner startAnimating];
    }
    
}

- (IBAction)backToHomepage:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil]; 
}
@end
