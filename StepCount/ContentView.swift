//
//  ContentView.swift
//  StepCount
//
//  Created by Luka Dimitrijević on 17.01.22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let points:[CGPoint] = [
            CGPoint(x: 0, y: 1),
            CGPoint(x: 9, y: -7),
            CGPoint(x: 13, y: 6),
            CGPoint(x: 15, y: 12),
            CGPoint(x: 19, y: -4),
            CGPoint(x: 20, y: -12),
            CGPoint(x: 26, y: -2),
            CGPoint(x: 26, y: 13),
            CGPoint(x: 29, y: 23),
            CGPoint(x: 30, y: 30),
        ]


        let regression = PolynomialRegression.regression(withPoints: points, degree: 6)

        print("The result is the sum of")
        for i in 0..<regression!.count {
            let coefficient = regression![i]
            print("\(coefficient) * x^\(i)");
        }
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
