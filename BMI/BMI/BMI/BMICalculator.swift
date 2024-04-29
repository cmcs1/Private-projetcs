//
//  BMICalculator.swift
//  BMI
//
//  Created by Carol Mwaba Chiyassa on 2023/10/19.
//

import Foundation

class BMICalculator {
    var bmi : Double
    var range : BMIRange
    
    init (weight: Int, height: Int){
        bmi = round(( Double(weight) / Double(height) / Double(height)) * Double(10000))
        range = BMIRange.getRange(bmi: bmi)
    }
}
