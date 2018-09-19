//
//  TaskList.swift
//  TaskManager
//
//  Created by Kaleb Spillman on 9/18/18.
//  Copyright © 2018 Kaleb Spillman. All rights reserved.
//

import Foundation
//creating the class that will show our list of tasks
class List {
    //creating the default task array that can be added to or taken away from
    var taskArray: [Task] = [Task(description: "Take the trash out"), Task(description: "wake up the kids"), Task(description: "feed the dog.")]
    //Function to add a new task to the lask list
    func addTask() {
        //asking the user what they want to add
        print("Enter the task you would like to add")
        //getting the users input
        var newTask = readLine()
        //while loop to tell the user they entered an invalid task.
        while newTask == nil || newTask == "" {
            print("invalid task")
            newTask = readLine()
        }
        
        
        
}
}
