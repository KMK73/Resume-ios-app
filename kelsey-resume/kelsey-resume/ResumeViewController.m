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

- (IBAction)saveButtonPressed:(id)sender {
    
    NSString *Path = [[NSBundle mainBundle] pathForResource:@"Kelsey Kjeldsen Resume" ofType:@"pdf"];
    
    //set pdf to nsdata
    NSData *pdfData = [NSData dataWithContentsOfFile:Path];
    
    //set the mail composer object
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
    //set composer delagate to this view controller (resumeViewController)
    [mailComposer setMailComposeDelegate:self];
    if ([MFMailComposeViewController canSendMail]) {
        // Configure the fields of the interface.
        [mailComposer setToRecipients:@[@"address@example.com"]];
        [mailComposer setSubject:@"Here is Kelsey's Resume!"];
        [mailComposer setMessageBody:@"This is Kelsey's resume." isHTML:NO];
        [mailComposer addAttachmentData:pdfData mimeType:@"application/pdf" fileName:@"Kelsey Kjeldsen Resume.pdf"];
        
        // Present the view controller modally.
        [self presentViewController:mailComposer animated:YES completion:nil];
        
        return;
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"" preferredStyle:UIAlertControllerStyleAlert];
        [alert dismissViewControllerAnimated:YES completion:nil];
    }
    
    
}

//dismiss the mail VC when it is finished
- (void)mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    // Check the result or perform other tasks.
    if (error) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"" preferredStyle:UIAlertControllerStyleAlert];
        //OK button action
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            //dismiss the view
            [alert dismissViewControllerAnimated:YES completion:nil];
            
        }];
        
        [alert addAction:ok];
        
        [self presentViewController:alert animated:YES completion:nil];
    } else {
    
//        [alert dismissViewControllerAnimated:YES completion:nil];

    }
    
    // Dismiss the mail compose view controller.
    [self dismissViewControllerAnimated:YES completion:nil];
}


     
@end
