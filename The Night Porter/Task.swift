//
//  Task.swift
//  The Night Porter
//
//  Created by Mohsin Ali Ayub on 17/07/2020.
//  Copyright © 2020 Mohsin Ali Ayub. All rights reserved.
//

import Foundation

enum TaskType {
    case daily, weekly, monthly
}

struct Task {
    var name: String
    var type: TaskType
    var completed: Bool
    var lastCompleted: NSDate?
}
