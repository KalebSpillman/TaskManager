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
        let appendTask = Task(description: newTask!)
        
        taskArray.append(appendTask)
    }
    // function that list all incomplete tasks  tasks
    func listIncompleteTasks () {
        for task in taskArray {
            if task.completed == false{
                print(task.description)
            }
        }
        
    }
    func listCompletedTasks () {
        for task in taskArray {
            if task.completed == true{
                print(task.description)
            }
        }
    }
    //function to see all tasks
    func listAllTasks () {
        for task in taskArray {
            print(task.description)
        }
    }
    //function to mark a task as complete
    func markTaskComplete () {
        for index in 0..<taskArray.count{
            if taskArray[index].completed == false {
                print("\(index). \(taskArray[index].description)")
            }
        }
        // Gettin the users input about what task they completed
        print("please enter the index of the task you completed.")
        var userInput = Int(readLine()!)
        
        //telling the user they entered an invalid index
        while userInput == nil {
            print("invalid input. please enter a valid index.")
            userInput = Int(readLine()!)
        }
        taskArray[userInput!].completed = true
        
        taskArray[userInput!].completeByDate = nil
    }
    //Function to mark a task as incomplete
    func markTaskIncomplete () {
        for index in 0..<taskArray.count{
            if taskArray[index].completed == true {
                print("\(index). \(taskArray[index].description)")
            }
        }
        //Getting user input for what task they want to mark incomplete
        print("please enter the index of the task you have not completed.")
        var userInput = Int(readLine()!)
        
        //telling the user they have entered an invalid index
        while userInput == nil {
        
        print("invalid input. please enter a valid index.")
            userInput = Int(readLine()!)
        }
        taskArray[userInput!].completed = false
        print("would you like to update the completion date. please enter yes or no.")
      
        
        
    }
    //function so the user can delete a class
    func deleteTask () {
        for index in 0..<taskArray.count {
            print("\(index). \(taskArray[index].description)")
        }
        print("please enter the index of the task you want to delete.")
        var userInput = Int(readLine()!)
        let validTaskIndex = Array(0..<taskArray.count)
        while userInput == nil {
            print("invalid input. please enter a valid index.")
            userInput = Int(readLine()!)
        
        }
        taskArray.remove(at: userInput!)
        
        }
    }


