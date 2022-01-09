//
//  ViewController.swift
//  Prework
//
//  Created by Jackson Tran on 1/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var perPerson: UILabel!
    @IBOutlet weak var partyCount: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var billAmount: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var partyCountStepper: UIStepper!
    @IBOutlet weak var partyCountLabel: UILabel!
    @IBOutlet weak var splitAmountLabel: UILabel!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        darkMode()
        billAmountTextField.text = defaults.string(forKey: "billTextField")
        tipSlider.value = defaults.float(forKey: "tipSlider")
        calculateTip()
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
        defaults.set(tipSlider.value, forKey: "tipSlider")
        calculateTip()
    }
    
    // calls calculateTip while text field is editing
    @IBAction func billTextFieldChanged(_ sender: Any) {
        defaults.set(billAmountTextField.text, forKey: "billTextField")
        calculateTip()
    }
    
    // Updates the party count label and calls calculateTip when stepper is used
    @IBAction func changePartyCount(_ sender: Any) {
        partyCountLabel.text = String(Int(partyCountStepper.value))
        calculateTip()
    }
    
    func darkMode() {
        if defaults.bool(forKey: "darkMode") == true {
            view.backgroundColor = UIColor.black
            billAmount.textColor = UIColor.systemBackground
            tipAmount.textColor = UIColor.systemBackground
            total.textColor = UIColor.systemBackground
            partyCount.textColor = UIColor.systemBackground
            perPerson.textColor = UIColor.systemBackground
            tipAmountLabel.textColor = UIColor.systemBackground
            tipPercentageLabel.textColor = UIColor.systemBackground
            totalLabel.textColor = UIColor.systemBackground
            partyCountLabel.textColor = UIColor.systemBackground
            splitAmountLabel.textColor = UIColor.systemBackground
            
        } else {
            view.backgroundColor = UIColor.systemBackground
            billAmount.textColor = UIColor.black
            tipAmount.textColor = UIColor.black
            total.textColor = UIColor.black
            partyCount.textColor = UIColor.black
            perPerson.textColor = UIColor.black
            tipAmountLabel.textColor = UIColor.black
            tipPercentageLabel.textColor = UIColor.black
            totalLabel.textColor = UIColor.black
            partyCountLabel.textColor = UIColor.black
            splitAmountLabel.textColor = UIColor.black
        }
    }
}

