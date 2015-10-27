//
//  LoginViewController.m
//  Camera
//
//  Created by Susanne Burnham on 10/19/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h>


@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *loginUsername;
@property (weak, nonatomic) IBOutlet UITextField *loginPassword;
- (IBAction)loginuser:(id)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo_blue"]];
}
- (void)viewWillAppear:(BOOL)animated {
        
        self.navigationController.navigationBarHidden = NO;
}

- (IBAction)loginuser:(id)sender {
    
    
    [PFUser logInWithUsernameInBackground:self.loginUsername.text password:self.loginPassword.text block:^(PFUser * _Nullable user, NSError * _Nullable error) {
        
        if (user != nil) {
            
            NSLog(@"logged in");
        }
    }];
    
}
@end
