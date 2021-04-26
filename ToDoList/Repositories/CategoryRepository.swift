//
//  CategoryRepository.swift
//  ToDoList
//
//  Created by Ana Geórgia Gama on 26/04/21.
//

import Foundation
import UIKit

class CategoryRepository {
    
    static func getCategories() -> [Category] {
        let categories = [
            Category(name: "Work", color: UIColor.green),
            Category(name: "Study", color: UIColor.yellow),
            Category(name: "To Do", color: UIColor.blue),
            Category(name: "Reminder", color: UIColor.systemPink)
        ]
        
        return categories;
    }
}
