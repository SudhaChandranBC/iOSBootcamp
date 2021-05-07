//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPcButton: UIButton!
    @IBOutlet weak var tenPcButton: UIButton!
    @IBOutlet weak var splitNumberlabel: UILabel!
    @IBOutlet weak var twentyPcButton: UIButton!
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPcButton.isSelected = false
        tenPcButton.isSelected = false
        twentyPcButton.isSelected = false
        sender.isSelected = true

        let buttonTitle = sender.currentTitle!
                let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
                let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
                tip = buttonTitleAsANumber / 100
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
//        if let numOfPersons = Int(splitNumberlabel.text) {
//            sender.
//        }
        numberOfPeople = Int(sender.value)
        splitNumberlabel.text = String(Int(sender.value))
        billTextField.endEditing(true)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
//        let billAmount = Double(billTextField.text ?? "0.0")
//        
//        let totalAmount = Double(billAmount ?? 0.0) + Double(billAmount! * tip)
//        let finalAmountPerPerson = totalAmount / Double(numberOfPeople)
//        
//        let stringVal = String(format: "%.2f", finalAmountPerPerson)
        
        let bill = billTextField.text!
                if bill != "" {
                    billTotal = Double(bill)!
                    let result = billTotal * (1 + tip) / Double(numberOfPeople)
                    finalResult = String(format: "%.2f", result)
                }
                self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "goToResults" {
                
                let destinationVC = segue.destination as! ResultsViewController
                destinationVC.result = finalResult
                destinationVC.tip = Int(tip * 100)
                destinationVC.split = numberOfPeople
            }
        }
}

