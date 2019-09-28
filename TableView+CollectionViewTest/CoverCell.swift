//
//  CoverCell.swift
//  JGNote
//
//  Created by apple on 2019/9/22.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class CoverCell: UITableViewCell,UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet var collectionView: UICollectionView!
    var dataArr = ["1","2","3","4","5"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArr.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! HomeCell
        return collectionViewCell
    }
     
    override func awakeFromNib() {
        super.awakeFromNib()

        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        layout.minimumLineSpacing = 5
        layout.scrollDirection = .horizontal
        layout.itemSize.height = self.frame.height - 20
        layout.itemSize.width = UIScreen.main.bounds.width - 80

        collectionView.collectionViewLayout = layout
        collectionView.backgroundColor = UIColor.white
        collectionView.register(UINib(nibName:"HomeCell", bundle:nil),
                                forCellWithReuseIdentifier:"myCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
