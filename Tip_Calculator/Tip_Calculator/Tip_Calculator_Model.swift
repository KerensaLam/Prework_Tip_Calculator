//
//  Tip_Calculator_Model.swift
//  Tip_Calculator
//
//  Created by SHUK MAN LAM on 1/10/22.
//

import Foundation

class TipCalculator {
    var amountB4Tax: Double = 0
    var tipAmt: Double = 0
    var tipPercentage: Double = 0
    var totalAmount: Double = 0
    
    init(amountB4Tax: Double,tipPercentage: Double){
        self.amountB4Tax = amountB4Tax
        self.tipPercentage = tipPercentage
    }
    
    func calculateTip(){
        tipAmt = amountB4Tax * tipPercentage
        totalAmount = tipAmt + amountB4Tax
        
        
    }
}
