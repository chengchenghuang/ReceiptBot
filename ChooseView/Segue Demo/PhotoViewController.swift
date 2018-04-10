//
//  ImageViewController.swift
//  PupProfile
//
//  Created by Paige Plander on 2/19/17.
//  Copyright © 2017 Paige Plander. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    /// The imageView that displays the image the user inputted
    @IBOutlet weak var imageView: UIImageView!
    
    /// The image to display in the image view (default is sad, since this means 
    /// the user's photo didn't get transferred through the segue
    var imageToDisplay = UIImage(named: "sad")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Once the view has loaded, set the imageView's image to the image we want to display
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
