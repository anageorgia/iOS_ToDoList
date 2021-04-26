//
//  TaskRepository.swift
//  ToDoList
//
//  Created by Ana Geórgia Gama on 26/04/21.
//

import Foundation

/**
    Using Singleton pattern
    Doesn't allow to create multiple instances of TaskRepository class
    Everytime we called the TaskRepository class, it'll be used the same instance
*/


class TaskRepository {
    
    static let instance: TaskRepository = TaskRepository()
    
    private var tasks: [Task]
    
    private init() {
        self.tasks = []
    }
    
    // MARK: - Tasks methods
    
    func save(task:Task) {
        self.tasks.append(task)
    }
    
    func update(taskToUpdate: Task) {
        let taskIndex = tasks.firstIndex { (task) -> Bool in
            task.id == taskToUpdate.id
        }
        
        tasks.remove(at: taskIndex!)
        tasks.append(taskToUpdate)
    }
    
    func getTasks() -> [Task] {
        self.tasks
    }
}
