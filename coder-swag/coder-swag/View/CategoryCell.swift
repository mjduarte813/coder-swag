//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Marcel Duarte on 8/9/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        //Everytime we want to call the cells on the screen, this function will update the views
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
