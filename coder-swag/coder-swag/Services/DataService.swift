//
//  DataService.swift
//  coder-swag
//
//  Created by Marcel Duarte on 8/9/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService() // Singleton Design Pattern. Static only keeps ONE copy in memory. Caveat is that the memory is not cleaned up, will persist in memory.
    
    private let categories = [  //Inferred type of Array of Category
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
}
