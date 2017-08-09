//
//  Category.swift
//  coder-swag
//
//  Created by Marcel Duarte on 8/9/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import Foundation

struct Category {
    // Created this model to store data and use it over and over
    private(set) public var title: String // private(set) public allows you to fetch these variable from other classes, but is only Set in this class.
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}
