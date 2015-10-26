//
//  RegisterViewController.m
//  Camera
//
//  Created by Susanne Burnham on 10/19/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

#import "RegisterViewController.h"
#import <Parse/Parse.h>

@interface RegisterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userName;


@property (weak, nonatomic) IBOutlet UITextField *emailaddress;

@property (weak, nonatomic) IBOutlet UITextField *password;


@end

@implementation RegisterViewController

- (void)viewDidLoad {

self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo_green"]];

}

- (IBAction)nextButton:(id)sender {
    
    PFUser * user = [PFUser user];
    
    user.username = self.userName.text;
    user.password = self.password.text;
    user.email = self.emailaddress.text;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        
        if (succeeded) {
            
            NSLog(@"signed up");
            
        }
            
        }];
    
}


@end
