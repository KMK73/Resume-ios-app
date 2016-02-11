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


//1) Add a button to the View containing UIWebView
//2) At button press save the file shown in UIWebView
//(note: in iOS 5 you must save data that can be easily recreated or downloaded to the caches directory)

//- (IBAction)saveButtonPress:(id)sender
//
//    NSArray: *paths = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)];
//    NSString *cachePath = [paths objectAtIndex:0];
//    BOOL isDir = NO;
//    NSError *error;
//    //You must check if this directory exist every time
//    if (! [[NSFileManager defaultManager] fileExistsAtPath:cachePath isDirectory:&isDir] && isDir   == NO)
//    {
//        [[NSFileManager defaultManager] createDirectoryAtPath:cachePath withIntermediateDirectories:NO attributes:nil error:&error];
//    }
//    NSString *filePath = [cachePath stringByAppendingPathComponent:@"someName.pdf"]
//    //webView.request.URL contains current URL of UIWebView, don't forget to set outlet for it
//    NSData *pdfFile = [NSData dataWithContentsOfURL:webView.request.URL];
//    [pdfFile writeToFile:filePath atomically:YES];
//}

     
@end
