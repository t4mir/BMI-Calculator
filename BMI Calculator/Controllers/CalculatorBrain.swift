//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Тамирлан Абаев   on 19.07.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBrain(height h:Float, weight w:Float) {
        let bmiValue = w/(h*h)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    //    func getBMI()->String {
    //        if bmi != nil {                      Check for nil value
    //            let bmiTo1DecimalPlace = String(format: "%.1f", bmi!)
    //            return bmiTo1DecimalPlace
    //        }
    //        else {
    //            return "0.0"
    //        }
    //    }
    //    func getBMI() -> String {                Optional Binding
    //        if let safeBMI = bmi  {
    //            let bmiTo1DecimalPlace = String(format: "%.1f", safeBMI)
    //            return bmiTo1DecimalPlace
    //        }
    //        else {
    //            return "0.0"
    //        }
    //    }
    
    func getBMI() -> String {         // Nil Coalescing Operator
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "I have no advices"
    }
    func getColor()->UIColor {
        return bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
