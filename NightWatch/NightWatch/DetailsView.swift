//
//  DetailsView.swift
//  NightWatch
//
//  Created by Bernardo Cirne Severo on 04/04/22.
//

import SwiftUI

struct DetailsView: View {
    let taskName: String
    @State var theTask = Task(
        name: "Check all windows",
        isComplete: false,
        lastCompleted: nil
    )
    var body: some View {
        VStack {
            HStack{
                //Checkmark if completed
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            ControlPanel(theTask: self.$theTask)
            Text("Placeholder for task Description")
            Text("Placeholder for mark complete button")
        }
    }
}


struct ControlPanel: View {
    @Binding var theTask: Task
    
    var body: some View {
        if theTask.isComplete == false{
            Button(action: {
                theTask.isComplete = true
            }){
                Text("Mark Complete")
            }.padding(.top)
        }else{
            Button(action: {
                theTask.isComplete = false
            }){
                Text("reset")
            }.padding(.top)
        }
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View{
        DetailsView(taskName: "Test Task")
    }
}
