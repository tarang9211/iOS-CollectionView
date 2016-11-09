//
//  Util.swift
//  CollectionView
//
//  Created by Tarang Hirani on 11/10/16.
//  Copyright © 2016 Tarang Hirani. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class func fromHex(hex: String, alpha: CGFloat = 1.0) -> UIColor {
        
        var cleanHexStr = hex.trimmingCharacters(in: CharacterSet.whitespaces).uppercased()
        
        if (cleanHexStr.contains("#")) {
            cleanHexStr.remove(at: cleanHexStr.startIndex)
        }
        
        if (cleanHexStr.characters.count != 6) {
            return UIColor.black
        }
        
        var rgbValue: UInt32 = 0
        Scanner(string: cleanHexStr).scanHexInt32(&rgbValue)
        //rgbValue is the unsigned integer representation of cleanHexStr
        
        return UIColor(
            red:    CGFloat((rgbValue & 0xff0000) >> 16) / 255.0,
            green:  CGFloat((rgbValue & 0x00ff00) >> 8) / 255.0,
            blue:   CGFloat(rgbValue & 0x0000ff) / 255.0,
            alpha:  CGFloat(alpha)
        )
    }
}
