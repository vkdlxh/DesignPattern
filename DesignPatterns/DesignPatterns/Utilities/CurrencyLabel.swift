//
//  CurrencyLabel.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/30.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import UIKit

class CurrencyLabel: UILabel {

//    @IBInspectable var topInset: CGFloat = 5.0
//    @IBInspectable var bottomInset: CGFloat = 5.0
//    @IBInspectable var leftInset: CGFloat = 20.0
//    @IBInspectable var rightInset: CGFloat = 5.0
//
//    override func drawText(in rect: CGRect) {
//        let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
//        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
//    }
    
    func countyFlag(county: String) {
        let imageAttachment =  NSTextAttachment()
        imageAttachment.image = UIImage(named: county)
        let attachmentString = NSAttributedString(attachment: imageAttachment)
        let imageOffsetY:CGFloat = -25.0;
        imageAttachment.bounds = CGRect(x: 0, y: imageOffsetY, width: 60, height: 60)
        let completeText = NSMutableAttributedString(string: "")
        completeText.append(attachmentString)
        let textAfterIcon = NSMutableAttributedString(string: county)
        completeText.append(textAfterIcon)
        self.attributedText = completeText
    }

}
