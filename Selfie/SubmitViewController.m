//
//  SubmitViewController.m
//  Camera
//
//  Created by Susanne Burnham on 10/19/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

#import "SubmitViewController.h"
#import <Parse/Parse.h>

@interface SubmitViewController ()
@property (weak, nonatomic) IBOutlet UITextView *captionTextView;

@end

@implementation SubmitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submitSelfie:(id)sender {
    
    // {{PFObject alloc] initWithClassName:@""];
    
    PFObject * selfie = [PFObject
                         objectWithClassName:@"Selfie"];
    
    //SWIFT let selfie = PFObject(className: "Selfie")
    
    selfie[@"caption"] = self.captionTextView.text;
    
    //SWIFT selfie["caption"] = captionTextView.text
    
    //[selfie save];
    
    [selfie saveInBackground];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
