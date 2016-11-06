//
//  CustomCell.swift
//  CollectionView
//
//  Created by Tarang Hirani on 10/27/16.
//  Copyright © 2016 Tarang Hirani. All rights reserved.
//

import UIKit


class CustomCell: UICollectionViewCell {
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var usernameLabelLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var headerViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var profileImageViewWidth: NSLayoutConstraint!
    @IBOutlet weak var profileImageViewHeight: NSLayoutConstraint!
    @IBOutlet weak var profileImageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var profileImageViewLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var footerView: UIView!
    
    
    func setUpCell(indexpath: IndexPath) {
        
        //set up for corner radius and shadow
        self.contentView.layer.backgroundColor = UIColor.white.cgColor
        self.contentView.layer.cornerRadius = 5
        self.contentView.layer.masksToBounds = true;
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width:0, height: 2.0)
        self.layer.shadowOpacity = 0.2
        self.layer.masksToBounds = false;
        
        //set up for header view
        self.headerViewHeightConstraint.constant = UIScreen.main.bounds.height * 0.175
        
        self.setUpImageView()
        
        self.createGradient()
        
        //override left constraint for username label
        self.usernameLabelLeftConstraint.constant = (0.75 * (UIScreen.main.bounds.height * 0.09))
        
        self.setNeedsLayout()
    }
    
    //set up gradient for header view
    private func createGradient() {
        let customGradient = CAGradientLayer()
        let colorOne = UIColor(red: 255/255, green: 0/255, blue: 102/255, alpha: 1).cgColor
        let colorTwo = UIColor(red: 255/255, green: 138/255, blue: 150/255, alpha: 1).cgColor
        customGradient.colors = [colorOne, colorTwo]
        customGradient.locations = [0.0, 0.5, 1.0]
        customGradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        customGradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        customGradient.frame = self.headerView.bounds
        self.headerView.layer.insertSublayer(customGradient, at: 0)
    }
    
    //set up profile image view
    private func setUpImageView() {
        profileImageViewHeight.constant = UIScreen.main.bounds.height * 0.09
        profileImageViewWidth.constant = profileImageViewHeight.constant
        profileImageViewTopConstraint.constant = -(0.50 * profileImageViewHeight.constant)
        profileImageViewLeftConstraint.constant = (0.50 * profileImageViewWidth.constant)
        profileImageView.layer.cornerRadius = profileImageViewHeight.constant / 2
        profileImageView.layer.shouldRasterize = false
    }
}
