import Foundation

class Task {
    internal init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
    
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
    
    
}
