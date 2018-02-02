//
//  CurrencyLabel.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/30.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import UIKit

class CurrencyLabel: UILabel {

    var imageView = UIImageView()
    
    override func drawText(in rect: CGRect) {
        let padding = UIEdgeInsets(top: 0, left: imageView.frame.width + 10, bottom: 0, right: 0)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, padding))
    }
    
    func countyFlag(county: Country) {
        let imageName = county.rawValue
        let image = UIImage(named: imageName)
        imageView = UIImageView(image: image!)
        let middleOflabelHeight = self.frame.origin.y
        print(middleOflabelHeight)
        imageView.frame = CGRect(x: 0, y: -middleOflabelHeight, width: 60, height: 50)
        self.addSubview(imageView)
        
        self.text = county.rawValue
    }

}
