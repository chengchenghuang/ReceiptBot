//
//  ViewController.swift
//  PupProfile
//
//  Created by Paige Plander on 2/19/17.
//  Copyright © 2017 Paige Plander. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var previewImageView: UIImageView!
    
    var currentimage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func gotoUpload(_ sender: Any) {
        performSegue(withIdentifier: "gotoUpload", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoUpload" {
            if let controller_instance = segue.destination as? UploadingViewController{
                controller_instance.receiptimage = currentimage
            }
        }
    }
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /// Opens the user's library, allowing them to choose a photo
    ///
    /// - Parameter sender: The "Add Photo From Library" Button
    @IBAction func chooseFromLibrary(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    
    /// Sets the Image View's image to the one chosen by the user
    ///
    /// - Parameters:
    ///   - picker: The image picker (user's library)
    ///   - info: data needed to create the image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        previewImageView.image = selectedImage
        currentimage = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
}

