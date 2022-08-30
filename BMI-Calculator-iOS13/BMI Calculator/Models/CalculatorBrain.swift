//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Hasith Methmal on 8/2/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    let colors = (underweight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), healthy: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), overweight: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advise: "Eat more pies!", color: colors.underweight)
        } else if (bmiValue <= 24.9) {
            bmi = BMI(value: bmiValue, advise: "Fit as a fiddle!", color: colors.healthy)
        } else {
            bmi = BMI(value: bmiValue, advise: "Eat less pies!", color: colors.overweight)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvise() -> String {
        return bmi?.advise ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? colors.healthy
    }
}
