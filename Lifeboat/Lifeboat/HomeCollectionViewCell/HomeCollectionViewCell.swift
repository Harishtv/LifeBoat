//
//  HomeCollectionViewCell.swift
//  Lifeboat
//
//  Created by Kav Interactive on 18/09/19.
//  Copyright © 2019 Kav Interactive. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet var backView:UIView!
    @IBOutlet var titleLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backView.clipsToBounds = true
        backView.layer.borderWidth = 1
        backView.layer.borderColor = UIColor.gray.cgColor
        backView.layer.cornerRadius = 9
    }

}
