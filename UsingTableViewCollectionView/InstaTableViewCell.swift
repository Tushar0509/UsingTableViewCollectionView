//
//  InstaTableViewCell.swift
//  UsingTableViewCollectionView
//
//  Created by Tushar Elangovan on 8/12/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import UIKit

class InstaTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var instacollectionview: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
//    lazy var instagramcollectionview: UICollectionView = {
//     let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .horizontal
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.delegate = self
//        cv.dataSource = self
//        cv.register(InstaViewCell.self, forCellWithReuseIdentifier: "instaCell")
//        return cv
//    }()
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: InstaViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "instaCell", for: indexPath) as! InstaViewCell
            cell.imageview.image = UIImage(named: "9")
            return cell
        //return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: 150, height: 120)
        return size
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.instacollectionview.delegate = self
        self.instacollectionview.dataSource = self
        
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
