//
//  ViewController.swift
//  Tip_Calculator
//
//  Created by SHUK MAN LAM on 1/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmtLabel:UILabel!
    @IBOutlet weak var billAmtTextField:UITextField!
    @IBOutlet weak var tipPercentageSeg:UISegmentedControl!
    @IBOutlet weak var tipAmtLabel:UILabel!
    @IBOutlet weak var totalAmtLabel:UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    @IBAction func cal_tip_bill(_ sender: Any){
        let billAmt = Double(billAmtTextField.text!) ?? 0.0
        let tipP = [0.15, 0.18, 0.20]
        let tipAmt = billAmt * tipP[tipPercentageSeg.selectedSegmentIndex]
        let totalAmt = billAmt + tipAmt
        
        tipAmtLabel.text = String(format:"$%0.2f",tipAmt)
        
        totalAmtLabel.text = String(format:"$%0.2f",totalAmt)
    }

    
}

