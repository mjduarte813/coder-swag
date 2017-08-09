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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Tells us which row was tapped and logic is built in this function.
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Category != nil) // Checks for sender to be not nil. Will crash the app at build time (not run) if nil.
            productsVC.initProducts(category: sender as! Category) //Calling initialize Product function in ProductsVC. Sender is passed via the performSegue() in didSelectRowAt tableView()
        }
    }
    

}

