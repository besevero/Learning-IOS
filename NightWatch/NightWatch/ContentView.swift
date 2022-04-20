//
//  ContentView.swift
//  NightWatch
//
//  Created by Bernardo Cirne Severo on 10/03/22.
//

import SwiftUI

class NightWatchTasks: ObservableObject{
    @Published var nightlyTasks = [
        Task(
              name: "Check all windows",
              isComplete: false,
              lastCompleted: nil
        ),
        Task(
              name: "Check all doors",
              isComplete: false,
              lastCompleted: nil
        ),
        Task(
              name: "Check the mail box",
              isComplete: false,
              lastCompleted: nil
        ),
        Task(
              name: "Inspect secutiry cameras",
              isComplete: false,
              lastCompleted: nil
        ),
        Task(
              name: "Clear ice from sidewalks",
              isComplete: false,
              lastCompleted: nil
        ),
        Task(
              name: "Document \"strange and unusual\" occurrences",
              isComplete: false,
              lastCompleted: nil
        )
    ]
    @Published var weeklyTasks = [
        Task(
              name: "Check inside all vacant rooms",
              isComplete: false,
              lastCompleted: nil
        ),
        Task(
              name: "Walk the perimeter of property",
              isComplete: false,
              lastCompleted: nil
        )
    ]
    @Published var monthlyTasks = [
        Task(
              name: "Test security alarm",
              isComplete: false,
              lastCompleted: nil
        ),
        Task(
              name: "Test motion Detectors",
              isComplete: false,
              lastCompleted: nil
        ),
        Task(
              name: "Test smoke alarms",
              isComplete: false,
              lastCompleted: nil
        )
    ]
}


struct ContentView: View {
    @ObservedObject var nightWatchTasks = NightWatchTasks()
    
    var body: some View {
        NavigationView {
            List{
                Section(header:
                            TaskSectionHeader(
                                symbomSystemName: "moon.stars", headerText: "Nightly Tasks"
                            )
                ){
                    ForEach(nightWatchTasks.nightlyTasks,
                             content: {
                                task in
                            NavigationLink(
                                destination: DetailsView(task: task),
                                label: {
                                    TaskRow(task: task)
                                })
                        
                    })
                }
                Section(header: TaskSectionHeader(symbomSystemName: "sunset", headerText: "Weely Tasks")){
                    ForEach(nightWatchTasks.weeklyTasks,
                            content: {
                            task in
                        NavigationLink(
                            destination: DetailsView(task: task),
                            label: {
                                TaskRow(task: task)
                            })
                    })
                }
                Section(header: TaskSectionHeader(symbomSystemName: "calendar", headerText: "Monthly Tasks")){
                    ForEach(nightWatchTasks.monthlyTasks,
                            content: {
                            task in
                        NavigationLink(
                            destination: DetailsView(task: task),
                            label: {
                                TaskRow(task: task)
                            })
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
struct TaskRow: View {
    let task: Task
    
    var body: some View {
        VStack {
            if task.isComplete {
                Image(systemName: "checkmark.square")
                Text(task.name)
                    .foregroundColor(.gray)
                    .strikethrough()
            }else{
                HStack{
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            TaskRow(task : Task(name: "Test Task", isComplete: true, lastCompleted: nil)).previewLayout(.fixed(width: 300, height: 70))
        }
    }
}


