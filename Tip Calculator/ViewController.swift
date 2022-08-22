//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Elaine Luzung on 8/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        /*1. Get initial bill amount and calculate the tips
          2. Calculate the total cost
          3. Update tip and total labels
         */
        
        //Get bill amount from text field input (by user).
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Calculating Total tip amount by multiplying tip * tipPercentage. tipPercentage is set by user.
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        //Adding tip to the bill for total amount.
        let total = bill + tip
        
        //Update Tip Amount Label with calculated tip.
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update Total Amount Label with the calculated total.
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}
