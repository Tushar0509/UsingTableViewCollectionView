//
//  InstaViewCell.swift
//  UsingTableViewCollectionView
//
//  Created by Tushar Elangovan on 8/13/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import UIKit

class InstaViewCell: UICollectionViewCell {
 
    @IBOutlet weak var imageview: UIImageView!
   
    
    lazy var image: UIImageView = {
           let iview = UIImageView()
           iview.contentMode = .scaleAspectFill
           iview.layer.cornerRadius = 15
           iview.layer.masksToBounds = true
           iview.clipsToBounds = true
           return iview
       }()
       
       lazy var likescounter: UILabel = {
           let likeslabel = UILabel()
           likeslabel.textColor = .yellow
           likeslabel.font = UIFont.boldSystemFont(ofSize: 19)
           return likeslabel
       }()


       override init(frame: CGRect) {
           super .init(frame: frame)
           setuplayout()
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       

       fileprivate func setuplayout(){
//           addSubview(image)
//           image.topAnchor.constraint(equalTo: topAnchor).isActive = true
//           image.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//           image.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//           image.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
           addSubview(likescounter)
           likescounter.leftAnchor.constraint(equalTo: imageview.leftAnchor).isActive = true
           likescounter.bottomAnchor.constraint(equalTo: imageview.bottomAnchor).isActive = true
           
       }
}
