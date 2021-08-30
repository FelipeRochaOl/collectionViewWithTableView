//
//  CustomTableViewCell.swift
//  collectionView
//
//  Created by Felipe Rocha Oliveira on 30/08/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var _collectionView: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self._collectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionViewCell")
        
        self._collectionView.delegate = self
        self._collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CustomCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as? CustomCollectionViewCell
        
        return cell ?? UICollectionViewCell()
    }
}
