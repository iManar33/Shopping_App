//
//  CategoryCell.swift
//  Coder-Swag
//
//  Created by Manar Laith on 9/6/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

    
    func updateViews(Category : Category )  {
        categoryImage.image = UIImage(named: Category.imageName)
//        print("image= \(categoryImage.image)")
        categoryTitle.text = Category.title
    }

}
