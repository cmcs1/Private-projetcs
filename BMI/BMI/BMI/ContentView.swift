//
//  ContentView.swift
//  BMI
//
//  Created by Johan Grundling on 2023/10/19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderWeight: Double = 50
    @State private var sliderHeight: Double = 140
    @State var bmiResult: String = "BMI not calculated"
    @State var bmiResultColor: Color = .red
    
    
    var body: some View {
        VStack {
            Slider(
                 value: $sliderWeight,
                            in: 30...180
                 )
            Text("Weight Kgs: \(sliderWeight, specifier: "%.0f")")
                .padding( [.bottom], 60)
            Slider(
                 value: $sliderHeight,
                            in: 50...220
                 )
            Text("Height cms: \(sliderHeight, specifier: "%.0f")")
                .padding( [.bottom], 60)
            Button(action: {
                let bmi = BMICalculator(weight: Int(round(sliderWeight)), height: Int(round(sliderHeight)))
                
                self.bmiResult = "BMI " + String(format: "%.0f",bmi.bmi)
                self.bmiResultColor = bmi.range.color()
            }) {
                Text("Calculate BMI")
            }.padding( [.bottom], 60)
            Text(bmiResult)
                .foregroundColor(bmiResultColor)
                .padding( [.bottom], 60)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
