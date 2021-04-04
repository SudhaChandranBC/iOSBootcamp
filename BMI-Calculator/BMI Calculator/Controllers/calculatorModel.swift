//
//  calculatorModel.swift
//  BMI Calculator
//
//  Created by Chandran, Sudha on 04/04/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct calculatorModel {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiVal = weight / (height * height)
        if bmiVal < 18.5 {
            bmi = BMI(value: bmiVal, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiVal < 24.9 {
            bmi = BMI(value: bmiVal, advice: "Fir as fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiVal, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    
    
    func getBMI() -> BMI? {
        if let bmiIns = bmi {
            return bmiIns
        }
        return nil
    }
    

}
