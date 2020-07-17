//
//  ViewController.swift
//  The Night Porter
//
//  Created by Mohsin Ali Ayub on 07/07/2020.
//  Copyright © 2020 Mohsin Ali Ayub. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // create task arrays
    let dailyTasks = [
        Task(name: "Close all windows", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Check all doors", type: .daily, completed: true, lastCompleted: nil),
        Task(name: "Is the boiler fueled?", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Check the mailbox", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Empty trash containers", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "If freezing, check water pipes", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Document \"strange and unusual\" occurences", type: .daily, completed: false, lastCompleted: nil),
    ]
    
    let weeklyTasks = [
        Task(name: "Check inside all cabins", type: .weekly, completed: false, lastCompleted: nil),
        Task(name: "Flush all lavatories in cabins", type: .weekly, completed: false, lastCompleted: nil),
        Task(name: "Walk the perimeter of property", type: .weekly, completed: false, lastCompleted: nil),
    ]
    
    let monthlyTasks = [
        Task(name: "Test security alarm", type: .monthly, completed: false, lastCompleted: nil),
        Task(name: "Test motion detectors", type: .monthly, completed: false, lastCompleted: nil),
        Task(name: "Test smoke alarms", type: .monthly, completed: false, lastCompleted: nil),
    ]
    
    // Table View Delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected row \(indexPath.row) in section \(indexPath.section)")
    }
    
    // Table View DataSource methods
    func numberOfSections(in tableView: UITableView) -> Int {
        tableView.backgroundColor = .clear
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        // to hold the current task
        var currentTask: Task!
        
        switch indexPath.section {
        case 0:
            currentTask = dailyTasks[indexPath.row]
        case 1:
            currentTask = weeklyTasks[indexPath.row]
        case 2:
            currentTask = monthlyTasks[indexPath.row]
        default:
            break
        }
        
        // use the name property to set the value of the cell.
        cell.textLabel!.text = currentTask.name
        
        if currentTask.completed {
            cell.textLabel?.textColor = .lightGray
            cell.accessoryType = .checkmark
        } else {
            cell.textLabel?.textColor = .black
            cell.accessoryType = .none
        }
        
        // clear out the background
        cell.backgroundColor = .clear
        
        return cell
    }
    
    @IBAction func toggleDarkMode(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .darkGray
        } else {
            view.backgroundColor = .white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }


}

