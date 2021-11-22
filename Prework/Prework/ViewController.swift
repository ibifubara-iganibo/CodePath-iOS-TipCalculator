//
//  ViewController.swift
//  Prework
//
//  Created by Fuby on 10/27/21.
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
        self.title = "Tip Calculator"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    
        
        
        
        let  defaults = UserDefaults.standard
        let tip1 = defaults.double(forKey: "t1")
        let tip2 = defaults.double(forKey: "t2")
        let tip3 = defaults.double(forKey: "t3")
        
        tipControl.setTitle(String(format: "%.1f",tip1) + "%", forSegmentAt: 0)
        
        tipControl.setTitle(String(format: "%.1f",tip2) + "%", forSegmentAt: 1)
        
        tipControl.setTitle(String(format: "%.1f",tip3) + "%", forSegmentAt: 2)
        
        
        billAmountTextField.keyboardType = UIKeyboardType.decimalPad
        billAmountTextField.becomeFirstResponder()
        
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount from the text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip ^ tipPercentage
        
        let  defaults = UserDefaults.standard
        let tip1 = defaults.double(forKey: "t1")
        let tip2 = defaults.double(forKey: "t2")
        let tip3 = defaults.double(forKey: "t3")
        
        
        let tipPercentages = [tip1/100,tip2/100,tip3/100]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format:"$%.2f", total)
    }
    
}

