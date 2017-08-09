//
//  ViewController.swift
//  coder-swag
//
//  Created by Marcel Duarte on 8/9/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //UITableViewDelegate and DataSource are PROTOCOLS

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self //Setting the Class as the value of the DataSource variable on the protocol
        categoryTable.delegate = self //Setting the Class as the value of the DataSource variable on the protocol
    }
    
    //Delegate function
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count //Returning the total number of values in the  array
    }
    
    //Delegate function
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row] // ()[] syntax is due to returning an array from a function.
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    

}

