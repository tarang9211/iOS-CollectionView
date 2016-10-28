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
    
//    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
//        let attr = layoutAttributes.copy() as! UICollectionViewLayoutAttributes
//        
//        self.setNeedsLayout()
//        self.layoutIfNeeded()
//        
//        let desiredHeight: CGFloat = 20
//        let desiredWidth: CGFloat = 20
//        attr.frame.size.height = desiredHeight
//        attr.frame.size.width = desiredWidth
//        self.frame = attr.frame  // Do NOT forget to set the frame or the layout won't get it !!!
//        
//        return attr
//    }
}
