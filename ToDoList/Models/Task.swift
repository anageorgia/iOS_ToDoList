//
//  Task.swift
//  ToDoList
//
//  Created by Ana Geórgia Gama on 21/04/21.
//

import Foundation

struct Task {
    var id = UUID()
    var name: String = ""
    var date: Date = Date()
    var category: Category = Category(name: "Category", color: .black)
}
