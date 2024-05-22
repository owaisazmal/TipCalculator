//
//  ContentView.swift
//  TipCalculator
//
//  Created by Khan, Owais on 5/20/24.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    @State var tipPercentage = 15.0

    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .font(.title)
                Text("Tip Calculator!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            HStack {
                Text("$")
                TextField("Ammount", text: $total)
                //Text(total)
            }
            HStack {
                Slider(value: $tipPercentage, in: 1...30, step: 1.0)
                    
                    
                Text("\(Int(tipPercentage))")
                Text("%")
            }
            if let totalNum = Double(total)
            {
                Text("Tip Amount: $\(totalNum * tipPercentage / 100, specifier: "%0.2f")")
            }
            else{
                Text("Please enter an Integer")
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
