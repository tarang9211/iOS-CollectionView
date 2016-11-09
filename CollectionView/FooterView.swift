//
//  FooterVIew.swift
//  CollectionView
//
//  Created by Tarang Hirani on 11/7/16.
//  Copyright © 2016 Tarang Hirani and Aditya Yadav. All rights reserved.
//

import Foundation
import UIKit

private let colorOne = UIColor(red: 58/255, green: 97/255, blue: 134/255, alpha: 1).cgColor
private let colorTwo = UIColor(red: 137/255, green: 37/255, blue: 62/255, alpha: 1).cgColor

class FooterView: UIView {
    
    //overiding from Interface Builder
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        
        let shapeLayer = createShapeLayer()
        shapeLayer.path = createPath().cgPath
        
        let gradientLayer = createGradient()
        gradientLayer.mask = shapeLayer
        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        
        self.layer.addSublayer(gradientLayer)
    }
    
    private func createPath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: self.bounds.minX, y: self.bounds.minY))
        path.addCurve(to: CGPoint(x: self.bounds.maxX, y: self.bounds.minY), controlPoint1: CGPoint(x: self.bounds.maxX * 0.25, y: -20), controlPoint2: CGPoint(x: self.bounds.maxX * 0.75, y: 20))
        path.addLine(to: CGPoint(x: self.bounds.maxX, y: self.bounds.maxY))
        path.addLine(to: CGPoint(x: self.bounds.minX, y: self.bounds.maxY))
        path.close()
        return path
    }
    
    private func createShapeLayer() -> CAShapeLayer {
        let layer = CAShapeLayer()
        layer.path = createPath().cgPath
        layer.fillColor = UIColor.red.cgColor
        layer.position = CGPoint(x: 0, y: 10)
        return layer
    }
    
    private func createGradient() -> CAGradientLayer {
        let gradient = CAGradientLayer()
        gradient.colors = [colorOne, colorTwo]
        gradient.locations = [0.0, 0.5, 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        return gradient
    }
}
