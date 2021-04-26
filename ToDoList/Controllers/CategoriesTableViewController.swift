//
//  CategoriesTableViewController.swift
//  ToDoList
//
//  Created by Ana Geórgia Gama on 26/04/21.
//

import UIKit

class CategoriesTableViewController: UITableViewController {
    
    let categories = CategoryRepository.getCategories()
    
    var chosenCategory : ((Category) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChooseCategoryCell", for: indexPath)
        let category = categories[indexPath.row]
        cell.textLabel?.text = category.name
        
        return cell
    }
    
    // selecting categor at Categories TableView and returning the category chosen to the CreateTask view
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        self.chosenCategory!(category)
        
        // popViewControllers = responsible for returning to the previous view
        self.navigationController?.popViewController(animated: true)
    }
}
