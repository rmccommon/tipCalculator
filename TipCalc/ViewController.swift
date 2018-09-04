//
//  ViewController.swift
//  TipCalc
//
//  Created by Ryan McCommon on 8/24/18.
//  Copyright © 2018 Ryan McCommon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var subInput: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentButton: UISegmentedControl!
    
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let tipPercent = tipSlider.value
        let bill = Double(subInput.text!) ?? 0
        let tip = bill*Double(tipPercent)
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
    
    @IBAction func changePercent(_ sender: Any) {
        let tipPercLabelNumber = Int(tipSlider.value*100)
        tipPercentLabel.text = String("%\(tipPercLabelNumber)")
        
    }
}

