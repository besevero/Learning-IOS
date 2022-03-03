//
//  ContentView.swift
//  SalesTaxSwiftUI
//
//  Created by Bernardo Cirne Severo on 03/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var beforeTaxPrice = ""
    @State var salesTaxRate = ""
    @State var afterTaxPrice = ""
    
    var body: some View {
        VStack {
            Text("Sales Tax Calculator")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
            HStack {
                Text("Before Tax Price")
                TextField("$0.00", text: $beforeTaxPrice)
                    .keyboardType(.decimalPad)
            }
            .padding(.top, 40.0)
            HStack {
                Text("Sales Tax Rate")
                TextField("4.7%", text: $salesTaxRate)
                    .keyboardType(.decimalPad)
            }
            .padding(.top, 20.0)
            
            HStack {
                Text("After Tax Price")
                TextField("$0.00", text: $afterTaxPrice)
            }
            .padding(.top, 20.0)
            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            
            Button("Calculate"){
                if let beforeTax = Float(beforeTaxPrice), let tax = Float(salesTaxRate){
                    let salesTax = beforeTax * tax / 100
                    afterTaxPrice = String(beforeTax + salesTax)
                }
            }
            .padding(.top, 40)
            
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
