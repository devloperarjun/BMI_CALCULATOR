//
//  CalculatorBrain.swift
//  BMI_Calculator
//
//  Created by arjun verma on 31/12/24.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBmiValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 1.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies!", color: UIColor.blue)
        }else if bmiValue < 4.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less Pies!", color: UIColor.red)
        }
    }
}
