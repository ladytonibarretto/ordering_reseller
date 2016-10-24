//
//  AddBranchViewController.swift
//  Reseller
//
//  Created by Lady Toni Barretto on 10/18/16.
//  Copyright © 2016 Lady Toni Barretto. All rights reserved.
//

import Foundation

import UIKit

class AddBranchViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    

    @IBOutlet weak var storeImg: UIImageView!
    @IBOutlet weak var storeImg2: UIImageView!
    @IBOutlet weak var storeImg3: UIImageView!

    @IBOutlet weak var permitImg: UIImageView!
    @IBOutlet weak var permitImg2: UIImageView!
    @IBOutlet weak var permitImg3: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Show Navigation Bar
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        // For right bar button items
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "imagename"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        let item1 = UIBarButtonItem(customView: btn1)
        
        let btn2 = UIButton(type: .custom)
        btn2.setImage(UIImage(named: "imagename"), for: .normal)
        btn2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        let item2 = UIBarButtonItem(customView: btn2)
        
        self.navigationItem.setRightBarButtonItems([item1,item2], animated: true)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(AddBranchViewController.tapDetected(_:)))
        storeImg.addGestureRecognizer(tap)
        storeImg2.addGestureRecognizer(tap)
        storeImg3.addGestureRecognizer(tap)
        
    }
    func tapDetected(_ sender: UITapGestureRecognizer) {
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary){
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ imagePicker: UIImagePickerController!, didFinishPickingMediaWithInfo info: NSDictionary!) {
        self.dismiss(animated: true, completion: nil);
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
