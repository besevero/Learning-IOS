//
//  ContentView.swift
//  TabView
//
//  Created by Bernardo Cirne Severo on 04/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                Home().tabItem {
                    Image(systemName: "house")
                    /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/
                }
                Map().tabItem {
                    Image(systemName: "map")
                    /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/
                    
                }
                Settings().tabItem {
                    Image(systemName: "gear")
                    Text("Tab Label 3")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        Text("TODO: build Home Screen")
    }
}

struct Map: View {
    var body: some View {
        Text("TODO: build Map Screen")
    }
}

struct Settings: View {
    var body: some View {
        Text("TODO: build Home Screen")
            
        }
    }
}
