//
//  ContentView.swift
//  NavigationView
//
//  Created by Bernardo Cirne Severo on 04/04/22.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: HStack {
                Text("Destination View")
            }
              .navigationTitle("Destination")
            ){
                Text("Go to Destination")
            }
            .navigationTitle("HOME")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
