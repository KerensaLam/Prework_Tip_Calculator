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
    @IBOutlet weak var tipLabel:UILabel!
    @IBOutlet weak var totalAmtLabel:UILabel!
    @IBOutlet weak var totalLabel:UILabel!
    @IBOutlet weak var textColorChangeButton: UIButton!
    @IBOutlet weak var titleLabel:UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        textColorChangeButton.layer.shadowColor = UIColor.orange.cgColor
        textColorChangeButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        textColorChangeButton.layer.shadowRadius = 5
        textColorChangeButton.layer.shadowOpacity = 1.0
    }
    
    @IBAction func cal_tip_bill(_ sender: Any){
        let billAmt = Double(billAmtTextField.text!) ?? 0.0
        let tipP = [0.15, 0.18, 0.20]
        let tipAmt = billAmt * tipP[tipPercentageSeg.selectedSegmentIndex]
        let totalAmt = billAmt + tipAmt
        
        tipAmtLabel.text = String(format:"$%0.2f",tipAmt)
        
        totalAmtLabel.text = String(format:"$%0.2f",totalAmt)
    }

    @IBAction func change_text_color(_ sender: Any){
        titleLabel.textColor = UIColor.blue
        billAmtLabel.textColor = UIColor.systemBlue
        tipLabel.textColor = UIColor.systemBlue
        totalLabel.textColor=UIColor.systemBlue
    }
}

