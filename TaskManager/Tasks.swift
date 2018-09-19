//
//  Tasks.swift
//  TaskManager
//
//  Created by Kaleb Spillman on 9/18/18.
//  Copyright © 2018 Kaleb Spillman. All rights reserved.
//

import Foundation

// the task class will make a default type of what each task should contain.
class Task {
    let description: String
    var completed: Bool = false
    var completeByDate: Date? = nil
    
    init(description: String) {
        self.description = description
    }
}
