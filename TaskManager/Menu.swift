//
//  Menu.swift
//  TaskManager
//
//  Created by Kaleb Spillman on 9/18/18.
//  Copyright © 2018 Kaleb Spillman. All rights reserved.
//

import Foundation

//the menu class that will control the menu options
class Menu {
    let taskList = List()
    
    var shouldQuit = false
    //function that launches the task manager and prints the menu for the user to see
    func go () {
        while !shouldQuit {
            print(printMenu())
            var input = getInput()
            while validateInput(input: input) == false {
                printMenu()
                input = getInput()
            }
            handleInput(input: input)
        }
    }
    //function to check and see if the user entered valid input
    func validateInput(input: String) -> Bool {
        let validMenuOptions = Array(1...9)
        guard let number = Int(input) else {
            return false
        }
        return validMenuOptions.contains(number)
    }
    //function to print out all menu options
    func printMenu() {
        print("""

//The menu for the TaskManager

Task Manager
1. Add task
2. See all tasks
3. See only incomplete tasks
4. See only complete tasks
5. Mark a task as complete
6. Mark a task as incomplete
7. Delete a task
8. Exit Task manager
9. Quit
please enter a number between 1 and 9
""")
    }
//Function allowing the user to quit the application
    func quit () {
        shouldQuit = true
        print("thank you for using the task manager")
    }
    //functions that will run the menu options
    func handleInput(input: String) {
        switch input {
        case "1":
            //Call the Managers add task function
            taskList.addTask()
        case "2":
            // See all task completed and uncompleted
            taskList.listAllTasks()
        case "3":
            //see all incomplete task
            taskList.listIncompleteTasks()
        case "4":
            //see all complete task
            taskList.listCompletedTasks()
        case "5":
            // Mark a task as complete
            taskList.markTaskComplete()
        case "6":
            //mark a task as incomplete
            taskList.markTaskIncomplete()
        case "7":
            //delete a task
            taskList.deleteTask()
        case "8":
            //exit the task manager
            quit()
        case "9":
            //Easter Egg
            EasterEgg()
            
        default:
            break
        }
    }
    //function to get input from the user
    func getInput() -> String {
        var input: String? = nil
        var userInput = readLine()
        //telling the user that they have enterd invalid input
        if userInput == nil || userInput == "" {
            print("Please enter valid input.")
            }
        return userInput!
    }
    func EasterEgg () {
        print("would you like to quit.")
        let userInput = readLine()
        while userInput == "yes" || userInput == "no" {
            print("are you sure")
            let userInput = readLine()
            if userInput == "yes" || userInput == "no" {
                print("are you positive.")
                let userInput = readLine()
                if userInput == "yes" || userInput == "no" {
                    print("Now exiting the application.")
                    sleep(5)
                    print("you thought i would let you off that easy. your funny.")
                    sleep(2)
                    print("would you like to quit for real this time.")
                    let userInput = readLine()
                    if userInput == "yes" || userInput == "no" {
                        print(" invalid input please enter y or n." )
                        let userInput = readLine()
                        if userInput == "y" || userInput == "n" {
                            print(" unexpected error would you like to print menu.")
                            let userInput = readLine()
                            if userInput == "yes" {
                                print("would you like to quit.")
                                let userInput = readLine()
                                sleep(5)
                                printMenu()
                                quit()
                                
                                
                            }
                            
                        }
                        
                    }
                }
            }
            
            
            
        }
        
        
        
    }
}

