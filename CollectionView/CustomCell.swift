//
//  CustomCell.swift
//  CollectionView
//
//  Created by Tarang Hirani on 10/27/16.
//  Copyright © 2016 Tarang Hirani. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var headerViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var imageviewWidth: NSLayoutConstraint!
    
    @IBOutlet weak var imageviewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var imageviewtopconstraint: NSLayoutConstraint!
    
    @IBOutlet weak var imageviewleftconstraint: NSLayoutConstraint!
    
    func setUpCell() {
 
        //set up for corner radius and shadow
        self.contentView.layer.backgroundColor = UIColor.white.cgColor
        self.contentView.layer.cornerRadius = 5
        self.contentView.layer.masksToBounds = true;
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width:0, height: 2.0)
        self.layer.shadowOpacity = 0.2
        self.layer.masksToBounds = false;
        
        //set up for header view
        self.headerViewHeightConstraint.constant = self.frame.height * 0.25
        self.updateConstraints()
        
        //set up for adding gradient
        self.createGradient()
        
        setupImageView()
        
        
        
        
        
    }
    
    private func createGradient() {
        let customGradient = CAGradientLayer()
        let colorOne = UIColor(red: 255/255, green: 138/255, blue: 150/255, alpha: 1).cgColor
        let colorTwo = UIColor(red: 255/255, green: 0/255, blue: 102/255, alpha: 1).cgColor
        customGradient.colors = [colorOne, colorTwo]
        customGradient.locations = [0.0, 0.5, 1.0]
        customGradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        customGradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        customGradient.frame = self.headerView.bounds
        self.headerView.layer.insertSublayer(customGradient, at: 0)
    }
    
    private func setupImageView() {
        
        imageviewHeight.constant = self.frame.height * 0.10
        imageviewWidth.constant = imageviewHeight.constant
        
        imageviewtopconstraint.constant = self.frame.height * 0.25
        imageviewleftconstraint.constant = imageviewWidth.constant
        self.updateConstraints()
        
        
    }
    
    
    
}
