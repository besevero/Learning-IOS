//
//  ViewController.swift
//  SalesTax
//
//  Created by Bernardo Cirne Severo on 03/03/22.
//

import UIKit

class ViewController: UIViewController {

    var beforeTaxPrice: Float = 0
    var salesTaxRate: Float = 0
    
    @IBOutlet weak var afterTaxPriceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func beforeTaxPRiceChanged(_ sender: UITextField) {
        
        if let value = Float(sender.text!){
            beforeTaxPrice = value
        }else{
            beforeTaxPrice = 0
        }
        
    }
    
    
    @IBAction func salesTaxRateChanged(_ sender: UITextField) {
        if let value = Float(sender.text!){
            salesTaxRate = value
        }else{
            salesTaxRate = 0
        }
    }
    
    @IBAction func calculateButtonPRessed(_ sender: Any) {
        let salesTax = beforeTaxPrice * salesTaxRate / 100
        let afterTaxPrice = beforeTaxPrice + salesTax
        afterTaxPriceTextField.text = String(afterTaxPrice)
    }
    
}

