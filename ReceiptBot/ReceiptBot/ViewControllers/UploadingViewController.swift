//
//  UploadingViewController.swift
//  ReceiptBot
//
//  Created by Jen on 4/9/18.
//  Copyright © 2018 iOS Decal - Jenny | CiCi | Victor. All rights reserved.
//

import UIKit

class UploadingViewController: UIViewController {

    @IBOutlet weak var memo: UITextView!
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var userDate: UITextField!
    
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "uploadingToLog", sender: sender)
        // saveReceipt()
    }
    
    func saveReceipt() {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context = appDel.persistentContainer.viewContext
        if let m = self.memo.text {
            let receipt = Receipt(context: context)
            receipt.amount = self.amount.text
            receipt.date = self.userDate.text
            receipt.memo = self.memo.text
            appDel.saveContext()
        }
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
