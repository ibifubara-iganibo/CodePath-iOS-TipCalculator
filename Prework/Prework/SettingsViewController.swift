//
//  SettingsViewController.swift
//  Prework
//
//  Created by Fuby on 11/10/21.
//

import UIKit

class SettingsViewController: UIViewController

{
    
    @IBOutlet weak var TipOne: UITextField!
    
    @IBOutlet weak var TipTwo: UITextField!
    
    @IBOutlet weak var TipThree: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TipOne.keyboardType = UIKeyboardType.decimalPad
        TipTwo.keyboardType = UIKeyboardType.decimalPad
        TipThree.keyboardType = UIKeyboardType.decimalPad
        TipOne.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipOne_func(_ sender: Any) {
        let tip1 = Double(TipOne.text!) ?? 15
        print(tip1)
        let defaults = UserDefaults.standard

        // Set a String value for some key.
        defaults.set(tip1, forKey: "t1")
        defaults.synchronize()
    }
    
    @IBAction func tipTwo_func(_ sender: Any) {
        let tip2 = Double(TipTwo.text!) ?? 18
        print(tip2)
        let defaults = UserDefaults.standard

        // Set a String value for some key.
        defaults.set(tip2, forKey: "t2")
        defaults.synchronize()
    }
    
    @IBAction func tipThree_func(_ sender: Any) {
        let tip3 = Double(TipThree.text!) ?? 20
        print(tip3)
        let defaults = UserDefaults.standard

        // Set a String value for some key.
        defaults.set(tip3, forKey: "t3")
        defaults.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
