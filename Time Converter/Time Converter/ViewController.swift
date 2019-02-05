//
//  ViewController.swift
//  Time Converter
//
//  Created by Kolli,Pradeep on 2/5/19.
//  Copyright © 2019 Kolli,Pradeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var yearsTF: UITextField!
    
    @IBOutlet weak var Months: UILabel!
    
    @IBOutlet weak var Days: UILabel!
    
    @IBOutlet weak var Seconds: UILabel!
    
    @IBOutlet weak var monthLBL: UILabel!
    
    @IBOutlet weak var daysLBL: UILabel!
    
    @IBOutlet weak var secondsLbL: UILabel!
    
    @IBAction func convertIt(_ sender: Any) {
        let years = Int(yearsTF.text!)!
        let months = years * 12
        let days = years * 365
        let seconds = days * 24 * 60
        monthLBL.text = String(months)
        daysLBL.text = String(days)
        secondsLbL.text = String(seconds)
    }
}

