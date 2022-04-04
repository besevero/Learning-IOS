//
//  ContentView.swift
//  NightWatch
//
//  Created by Bernardo Cirne Severo on 10/03/22.
//

import SwiftUI

let nightlyTasks = [
    "Check all windows",
    "Check all doors",
    "Check the mail box",
    "Inspect secutiry cameras",
    "Clear ice from sidewalks",
    "Document \"strange and unusual\" occurrences"
]
let weeklyTasks = [
    "Check inside all vacant rooms",
    "Walk the perimeter of property"
]
let monthlyTasks = [
    "Test security alarm",
    "Test motion Detectors",
    "Test smoke alarms"
]
struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List{
                Section(header: TaskSectionHeader(symbomSystemName: "moon.stars", headerText: "Nightly Tasks")){
                    ForEach(nightlyTasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                })
                }
                Section(header: TaskSectionHeader(symbomSystemName: "sunset", headerText: "Weely Tasks")){
                    ForEach(weeklyTasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))

                    })
                }
                Section(header: TaskSectionHeader(symbomSystemName: "calendar", headerText: "Monthly Tasks")){
                    ForEach(monthlyTasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                    })
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}

struct TaskSectionHeader: View {
    let symbomSystemName: String
    let headerText: String
    
    var body: some View {
        HStack{
            Image(systemName: symbomSystemName)
            Text(headerText)
        }
        .font(.title3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
