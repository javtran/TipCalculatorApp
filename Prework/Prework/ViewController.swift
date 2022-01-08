//
//  ViewController.swift
//  Prework
//
//  Created by Jackson Tran on 1/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var partyCountStepper: UIStepper!
    @IBOutlet weak var partyCountLabel: UILabel!
    @IBOutlet weak var splitAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // calculates Tip, update total amount, and calculates the split amount
    func calculateTip() {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tip = bill * Double(tipSlider.value)
        let total = bill + tip
        
        // Update Tip Percentage Label
        tipPercentageLabel.text = String(format: "%.2f%%", tipSlider.value * 100)
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount Label
        totalLabel.text =  String(format: "$%.2f", total)
        
        // Update Split Amount Label
        splitAmountLabel.text = String(format: "$%.2f", total/partyCountStepper.value)
    }
    
    // calls calculateTip when slider is used
    @IBAction func tipSliderChange(_ sender: Any) {
        calculateTip()
    }
    
    // calls calculateTip while text field is editing
    @IBAction func billTextFieldChanged(_ sender: Any) {
        calculateTip()
    }
    
    // Updates the party count label and calls calculateTip when stepper is used
    @IBAction func changePartyCount(_ sender: Any) {
        partyCountLabel.text = String(Int(partyCountStepper.value))
        calculateTip()
    }
    
}

