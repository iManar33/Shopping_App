//
//  SimpleCell.swift
//  Coder-Swag
//
//  Created by Manar Laith on 9/8/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import UIKit

class SimpleCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func getTitles(title: String){
        titleLabel.text = title
        
    }
    
    

}
