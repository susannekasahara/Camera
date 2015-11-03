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

    func logout() {
                PFUser.logOut()
                let userStoryoard: UIStoryboard = UIStoryboard.storyboardWithName("User", bundle: nil)
                let nc: UINavigationController = userStoryoard.instantiateInitialViewController()
                UIApplication.sharedApplication().windows[0].rootViewController = nc
            }
            
            override func viewDidLoad() {
                super.viewDidLoad()
                var logoutButton: UIBarButtonItem =
                self.navigationItem.rightBarButtonItem = logoutButton
                selfies = [].mutableCopy() as! [AnyObject]
                var selfieQuery: PFQuery = PFQuery.queryWithClassName("Selfie")
                selfieQuery.findObjectsInBackgroundWithBlock({(objects: [AnyObject], error: NSErrorPointer) in            for selfie: PFObject in objects {
                    NSLog("%@", selfie)
                    selfies.addObject(selfie)
                    }
                    self.tableView.reloadData()
                    
                })
            }
            
            func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                NSLog("%@", selfies)
                return selfies.count
            }
            
            func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
                var cell: SelfieTableViewCell = tableView.dequeueReusableCellWithIdentifier("SelfieCell", forIndexPath: indexPath)
                return cell
            }
}