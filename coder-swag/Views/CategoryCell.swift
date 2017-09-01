//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Billy Morris on 8/30/17.
//  Copyright © 2017 Billy Morris. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    

    @IBOutlet weak var caetegoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!

    func updateViews(category: Category) {
        caetegoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }
}
