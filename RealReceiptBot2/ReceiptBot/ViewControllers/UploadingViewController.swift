//
//  UploadingViewController.swift
//  ReceiptBot
//
//  Created by Jen on 4/9/18.
//  Copyright © 2018 iOS Decal - Jenny | CiCi | Victor. All rights reserved.
//

import UIKit

class UploadingViewController: UIViewController {


    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var userDate: UITextField!
    @IBOutlet var photo: UIImageView!
    
    @IBOutlet var memo: UITextField!
    
    var receiptimage = UIImage(named: "emptyreceipt")
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        saveReceipt()
        performSegue(withIdentifier: "uploadingToLog", sender: sender)
    }
    
    @IBAction func textFieldEditing(sender: UITextField) {
        
        let datePickerView: UIDatePicker = UIDatePicker()
        
        datePickerView.datePickerMode = UIDatePickerMode.date
        
        sender.inputView = datePickerView
        
        datePickerView.addTarget(self, action: #selector(UploadingViewController.datePickerValueChanged), for: UIControlEvents.valueChanged)
        
    }
    
    @objc func datePickerValueChanged(sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        userDate.text = dateFormatter.string(from: sender.date)
        
    }
    
    func saveReceipt() {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context = appDel.persistentContainer.viewContext
        
        if (self.memo.text) != nil {
            let receipt = Receipt(context: context)
            receipt.amount = self.amount.text
            receipt.date = self.userDate.text
            receipt.memo = self.memo.text
            let dataImage = UIImageJPEGRepresentation(self.receiptimage!, 0.0);
            receipt.photo = dataImage
            appDel.saveContext()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photo.image = receiptimage

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
