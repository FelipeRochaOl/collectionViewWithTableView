//
//  CustomCollectionViewCell.swift
//  collectionView
//
//  Created by Felipe Rocha Oliveira on 30/08/21.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.clipsToBounds = true
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.borderWidth = 1.5
    }
}
