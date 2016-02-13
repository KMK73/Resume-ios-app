//
//  ContactViewController.m
//  kelsey-resume
//
//  Created by Kelsey Kjeldsen on 2/12/16.
//  Copyright © 2016 Kelsey Kjeldsen. All rights reserved.
//

#import "ContactViewController.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

-(IBAction)callPhone:(id)sender {
    
    NSString *phoneNumber = @"+16313121091";
    NSURL *phoneUrl = [NSURL URLWithString:[NSString  stringWithFormat:@"telprompt://%@",phoneNumber]];
    
    if ([[UIApplication sharedApplication] canOpenURL:phoneUrl]) {
        [[UIApplication sharedApplication] openURL:phoneUrl];
    } else {
        //create a new uialert
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Call could not be made at this time." message:@"Sorry please try again later." preferredStyle:UIAlertControllerStyleAlert];
        
        //now configure the two buttons within the alert OK button
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            
            //dismiss the alert view
            [alert dismissViewControllerAnimated:YES completion:nil];

        }];
        
        //ADD THE ok button to the alert itself
        [alert addAction:ok];
        
        [self presentViewController:alert animated:YES completion:nil];
    }
}

- (IBAction)BackToHome:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
