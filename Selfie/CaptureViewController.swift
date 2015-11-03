//
//  CaptureViewController.swift
//  Selfie
//
//  Created by Susanne Burnham on 10/26/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

import UIKit
import Parse

class CaptureViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
                self.picker = UIImagePickerController()
                self.picker.sourceType = UIImagePickerControllerSourceTypeCamera
                self.picker.cameraDevice = UIImagePickerControllerCameraDeviceFront
                self.picker.delegate = self
                self.picker.showsCameraControls = false
                self.picker.view.frame = self.cameraHolderView.bounds
                self.cameraHolderView.addSubview(self.picker.view)
            }
            
            func viewDidLayoutSubviews() {
                var newFrame: CGRect = self.picker.view.frame
                newFrame.size.width = newFrame.size.height / 4 * 3
                newFrame.origin.x = (self.cameraHolderView.frame.size.width - newFrame.size.width) / 2
                NSLog("%f %f@", newFrame.size.width, newFrame.size.height)
                self.picker.view.frame = newFrame
            }
            
            @IBAction func takePicture(sender: AnyObject) {
                self.picker.takePicture()
            }
            
            func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo NSDictionary: ) {
            }
            var image: UIImage = info[UIImagePickerControllerOriginalImage]
            var filterVC: FilterViewController = self.storyboard.instantiateViewControllerWithIdentifier("FilterVC")
            NSLog("%@", filterVC.filterImageView)
            filterVC.originalImage = image
            self.navigationController.pushViewController(filterVC, animated: true)
            
            func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
            }
}