//
//  CustomCell.swift
//  CollectionView
//
//  Created by Tarang Hirani on 10/27/16.
//  Copyright © 2016 Tarang Hirani. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    func setUpCell() {
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 5)
        self.layer.shadowOpacity = 0.2
        
        setUpHeaderView()
    }
    
    func setUpHeaderView() {
        let headerView = UIView()
        headerView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height * 0.25)
        headerView.backgroundColor = UIColor.red
        self.clipsToBounds = true
        self.contentView.addSubview(headerView)
    }
    
}
