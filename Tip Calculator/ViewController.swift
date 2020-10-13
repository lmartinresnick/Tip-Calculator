//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Luke Martin-Resnick on 5/24/20.
//  Copyright © 2020 Luke Martin-Resnick. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    // Outlet
    
    @IBOutlet weak var billTotalBeforeTipTextfield: UITextField!
    
    @IBOutlet weak var tipPercentageTextfield: UITextField!
    
    @IBOutlet weak var tipTotalTextfield: UILabel!
    
    @IBOutlet weak var billTotalAfterTipTextfield: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Action
    @IBAction func calculateTapped(_ sender: Any) {
    
        //print(billTotalBeforeTipTextfield.text!)
        //print(tipPercentageTextfield.text!)
        
        let billTotalBeforeTip = Double(billTotalBeforeTipTextfield.text!)!
        let tipPercentage = Double(tipPercentageTextfield.text!)!
        
        let tip = billTotalBeforeTip * (tipPercentage / 100)
        
        let billTotalAfterTip = billTotalBeforeTip + tip
        
        tipTotalTextfield.text = "Tip: $\(tip)"
        
        billTotalAfterTipTextfield.text = "Total: $\(billTotalAfterTip)"
        
        view.backgroundColor = .magenta
        
        
    
    }
    
    
}

