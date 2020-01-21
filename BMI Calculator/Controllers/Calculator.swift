//
//  Calculator.swift
//  BMI Calculator
//
//  Created by zsolt on 06/12/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct Calculator {
    
    var bmiValue: BMI?
    
    
    func getBMIValue () -> String {
        let bmi = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmi
    }
    func getAdvice() -> String {
        return bmiValue?.advice ?? ""
    }
    func getColor() -> UIColor {
        return bmiValue?.color ?? UIColor.white
    }
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmi = weight / (height * height)
        switch bmi {
        case 0.0 ..< 18.5:
            bmiValue = BMI(value: bmi, advice: "Eat some snacks!!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        case 18.5 ..< 24.9:
            bmiValue = BMI(value: bmi, advice: "You're just fine", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        case 24.0 ... 99.9:
            bmiValue = BMI(value: bmi, advice: "No food for dinner", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        default:
            print("Error")
        }
    }
    
    
}
