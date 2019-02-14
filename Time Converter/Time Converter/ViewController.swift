//
//  ViewController.swift
//  Time Converter
//
//  Created by Kolli,Pradeep on 2/5/19.
//  Copyright © 2019 Kolli,Pradeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        convertITBTN.layer.cornerRadius = 5
    }

    @IBOutlet weak var yearsTF: UITextField!
    
    @IBOutlet weak var Months: UILabel!
    
    @IBOutlet weak var Days: UILabel!
    
    @IBOutlet weak var Seconds: UILabel!
    
    @IBOutlet weak var monthLBL: UILabel!
    
    @IBOutlet weak var daysLBL: UILabel!
    
    @IBOutlet weak var secondsLbL: UILabel!
    
    @IBOutlet weak var convertITBTN: UIButton!

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        convertIt("Please give me an A")
        return true
    }
    
    @IBAction func convertIt(_ sender: Any) {
        if let years:Int = Int(yearsTF.text!){
            let months = years * 12
            let days = years * 365
            let seconds = days * 24 * 60
            monthLBL.text = String(months)
            daysLBL.text = String(days)
            secondsLbL.text = String(seconds)
        }
        else{
            print("Hey, Thats an error")
        }
    }
}

