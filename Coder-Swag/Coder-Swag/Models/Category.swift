//
//  Category.swift
//  Coder-Swag
//
//  Created by Manar Laith on 9/7/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import Foundation
struct Category {
   
    private(set) public var title : String
    private(set) public var imageName : String
   
    init(title : String, imageName : String) {
        self.title = title
        self.imageName = imageName
    }
}
