//
//  SelfieTableViewController.m
//  Camera
//
//  Created by Susanne Burnham on 10/19/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

#import "SelfieTableViewController.h"
#import "SelfieTableViewCell.h"

@interface SelfieTableViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *selfieImageView;

@end

@implementation SelfieTableViewController
{
    NSMutableArray * selfies;
    
}

- (void)logout {
    
    [PFUser logOut];
    
    UIStoryboard * userStoryoard = [UIStoryboard storyboardWithName:@"User" bundle:nil];
    
    UINavigationController * nc = [userStoryoard instantiateInitialViewController];
    
    [UIApplication sharedApplication].windows[0].rootViewController = nc;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ////logout////
    
    UIBarButtonItem * logoutButton = [[UIBarButtonItem alloc] initWithTitle:@"logout" style:(UIBarButtonItemStylePlain) target:self action:@selector(logout)];
    
    //self.navigationController.navigationItem.leftBarButtonItem = logoutButton;
    
    self.navigationItem.rightBarButtonItem = logoutButton;
    
    selfies = [@[] mutableCopy];
    
    PFQuery * selfieQuery = [PFQuery queryWithClassName:@"Selfie"];
    
    [selfieQuery findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        
        for (PFObject * selfie in objects) {
            
            NSLog(@"%@", selfie);[selfies addObject:selfie];
        }
        
        [self.tableView reloadData];
        
    }];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSLog(@"%@", selfies);
    
    return selfies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SelfieTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"SelfieCell" forIndexPath:indexPath];
    
    return cell;
    
    
}

@end
