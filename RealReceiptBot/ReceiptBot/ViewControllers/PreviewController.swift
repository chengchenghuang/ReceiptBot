//
//  PreviewController.swift
//  ReceiptBot
//
//  Created by CiCi on 4/25/18.
//  Copyright © 2018 iOS Decal - Jenny | CiCi | Victor. All rights reserved.
//

import UIKit

class PreviewController: UIViewController {

    @IBOutlet var previewimage: UIImageView!
    
    var receiptimage = UIImage(named: "emptyreceipt")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previewimage.image = receiptimage

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
