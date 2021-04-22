//
//  TasksTableViewController.swift
//  ToDoList
//
//  Created by Ana Geórgia Gama on 21/04/21.
//

import UIKit

let category = Category(name: "Work", color: UIColor.green)

let tasks: [Task] = [
    Task(name: "Create presentation for tomorrow", date: Date(), category: category),
    Task(name: "Call Monica about the broken dishes", date: Date(), category: category),
    Task(name: "Ask Chandler about the new computer", date: Date(), category: category)
]

class TasksTableViewController: UITableViewController {
    
    private var dateFormatter: DateFormatter = DateFormatter()
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // returning as many elements there are in my array of tasks
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    // method called for each time we have to show something on table view cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // load one cell at the time and set the data
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        let task = tasks[indexPath.row]
        
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormatter.string(from: task.date)
        
        cell.categoryNameLabel.text = task.category.name
        cell.categoryColorBarView.backgroundColor = task.category.color
        cell.taskDescriptionLabel.text = task.name
        
        return cell
    }
}
