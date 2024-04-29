//
//  BMIRange.swift
//  BMI
//
//  Created by Carol Mwaba Chiyassa on 2023/10/19.
//

import Foundation
import SwiftUI

enum BMIRange{
    case under
    case normal
    case over
    
    func color() -> Color {
            switch self {
                case .under:
                    return  .blue
                case .normal:
                    return  .green
                case .over:
                    return  .red
            }
         }
    
    static func getRange(bmi: Double) -> BMIRange{
        switch bmi{
            case 0..<18.5: return .under
            case 18.5..<25: return .normal
            case 25...200: return .over
            default: return .normal
        }
        
    }
}
