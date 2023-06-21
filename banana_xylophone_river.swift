import UIKit

class ProjectBuild {
  
  // Properties
  var title: String
  var description: String
  var dueDate: Date
  var isCompleted: Bool
  
  // Initializers
  init(title: String, description: String, dueDate: Date, isCompleted: Bool) {
    self.title = title
    self.description = description
    self.dueDate = dueDate
    self.isCompleted = isCompleted
  }
  
  // Methods
  func createProject() {
    print("Project created with title: \(title)")
  }
  
  func startProject() {
    if isCompleted == false {
      print("Project Started!")
    } else {
      print("Project already completed.")
    }
  }
  
  func editProject() {
    print("Project edited.")
  }
  
  func deleteProject() {
    print("Project Deleted.")
  }
  
  func completeProject() {
    isCompleted = true
    print("Project Completed!")
  }
  
  func remindProject() {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    let dueDateString = formatter.string(from: dueDate)
    print("Project due on \(dueDateString)")
  }
  
  func printProjectSummary() {
    print("Project Summary: \(title)\nDescription: \(description)\nDue Date: \(dueDate)\nCompleted: \(isCompleted)")
  }
  
  func printProjectNotification() {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    let dueDateString = formatter.string(from: dueDate)
    if isCompleted == false {
      print("You have a project due on \(dueDateString)")
    } else {
      print("Project due on \(dueDateString) is complete!")
    }
  }
  
}

let project1 = ProjectBuild(title: "Project 1", description: "This is the first project", dueDate: Date(), isCompleted: false)
project1.createProject()
project1.startProject()
project1.remindProject()
project1.printProjectSummary()
project1.printProjectNotification()
project1.completeProject()
project1.printProjectNotification()