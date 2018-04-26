//
//  UploadViewController.swift
//  ReceiptBot
//
//  Created by Jen on 4/9/18.
//  Copyright © 2018 iOS Decal - Jenny | CiCi | Victor. All rights reserved.
//

import UIKit

class UploadViewController: UIViewController {

    @IBAction func uploadReceipt(_ sender: Any) {
        performSegue(withIdentifier: "gotolibrary", sender: sender)
    }

    @IBAction func gotoCamera(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToCamera", sender: sender)
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
