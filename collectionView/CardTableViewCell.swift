//
//  CardTableViewCell.swift
//  collectionView
//
//  Created by Felipe Rocha Oliveira on 30/08/21.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var cardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cardImageView.layer.cornerRadius = 0.5 * self.cardImageView.bounds.size.width
        self.cardImageView.clipsToBounds = true
        self.cardImageView.layer.borderColor = UIColor.blue.cgColor
        self.cardImageView.layer.borderWidth = 1.5
        
        self.cardView.layer.cornerRadius = 4
        self.cardView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
