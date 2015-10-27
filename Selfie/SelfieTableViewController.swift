//
//  SelfieTableViewController.swift
//  Selfie
//
//  Created by Susanne Burnham on 10/26/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

import UIKit
import Parse

class SelfieTableViewController: UIViewController {
    
    var selfies: [AnyObject] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        
//        UIBarButtonItem * logoutButton = [[UIBarButtonItem alloc] initWithTitle:@"logout" style:(UIBarButtonItemStylePlain) target:self action:@selector(logout)];
//        
//        //self.navigationController.navigationItem.leftBarButtonItem = logoutButton;
//        
//        self.navigationItem.rightBarButtonItem = logoutButton;
//        
//        selfies = [@[] mutableCopy];
//        
//        PFQuery * selfieQuery = [PFQuery queryWithClassName:@"Selfie"];
//        
//        [selfieQuery findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
//        
//        for (PFObject * selfie in objects) {
//        
//        NSLog(@"%@", selfie);[selfies addObject:selfie];
//        }
//        
//        [self.tableView reloadData];
//        
//        }];

        
    }

    
    func logout() {
        
        PFUser.logOut()
        
//        [PFUser logOut];
//        
//        UIStoryboard * userStoryoard = [UIStoryboard storyboardWithName:@"User" bundle:nil];
//        
//        UINavigationController * nc = [userStoryoard instantiateInitialViewController];
//        
//        [UIApplication sharedApplication].windows[0].rootViewController = nc;
        
    }
    
    

}