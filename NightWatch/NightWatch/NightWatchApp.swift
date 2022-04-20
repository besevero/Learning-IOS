//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Bernardo Cirne Severo on 10/03/22.
//

import SwiftUI

@main
struct NightWatchApp: App {
    @StateObject private var nightWatchTasks = NightWatchTasks()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTasks: nightWatchTasks)
        }
    }
}
