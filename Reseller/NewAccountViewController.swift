//
//  NewAccountViewController.swift
//  Reseller
//
//  Created by Lady Toni Barretto on 10/18/16.
//  Copyright © 2016 Lady Toni Barretto. All rights reserved.
//

import Foundation

import UIKit

class NewAccountViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var storeImg: UIImageView!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(NewAccountViewController.tapDetected(_:)))
        storeImg.addGestureRecognizer(tap)
        
    }
    func tapDetected(_ sender: UITapGestureRecognizer) {
        
        print("1213124")
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary){
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        
    }
    
    func imagePickerController(_ imagePicker: UIImagePickerController!, didFinishPickingMediaWithInfo info: NSDictionary!) {
        self.dismiss(animated: true, completion: nil);
        print("Got Image!")
        storeImg.image = (info[UIImagePickerControllerOriginalImage] as! UIImage)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
