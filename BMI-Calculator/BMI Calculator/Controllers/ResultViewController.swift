//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Chandran, Sudha on 04/04/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiValue: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue?.getBMIValue()
        adviceLabel.text = bmiValue?.getAdvice()
        view.backgroundColor = bmiValue?.getColor()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destination.
         Pass the selected object to the new view controller.
    }
    */

}
