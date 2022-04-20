//
//  DetailsView.swift
//  NightWatch
//
//  Created by Bernardo Cirne Severo on 04/04/22.
//

import SwiftUI

struct DetailsView: View {
    let task: Task
    
    var body: some View {
        VStack {
            HStack{
                //Checkmark if completed
                Image(systemName: task.isComplete ? "checkmark.square" : "square")
                Text(task.name)
                Text("Placeholder for task Description")
                Text("Placeholder for mark complete button")

            }
           // ControlPanel(isComplete: self.$task.isComplete)
            }
    }
}


struct ControlPanel: View {
    @Binding var isComplete: Bool
    
    var body: some View {
        if isComplete == false{
            Button(action: {
                isComplete = true
            }){
                Text("Mark Complete")
            }.padding(.top)
        }else{
            Button(action: {
                isComplete = false
            }){
                Text("reset")
            }.padding(.top)
        }
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View{
        DetailsView(
            task: Task(
                name :"Test Task",
                isComplete: false,
                lastCompleted: nil
            )
        )
    }
}
