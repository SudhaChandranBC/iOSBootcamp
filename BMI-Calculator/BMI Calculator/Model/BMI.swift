//
//  BMI.swift
//  BMI Calculator
//
//  Created by Chandran, Sudha on 04/04/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float?
    let advice: String?
    let color: UIColor?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
