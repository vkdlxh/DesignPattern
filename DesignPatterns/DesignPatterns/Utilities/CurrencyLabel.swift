//
//  CurrencyLabel.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/30.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import UIKit

class CurrencyLabel: UILabel {

    let padding = UIEdgeInsets(top: 2, left: 8, bottom: 2, right: 8)
    override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, padding))
    }

    
    func countyFlag(county: Country) {
        guard let currency = CurrencyFactory.currency(for: county) else {
            return
        }
        let imageAttachment =  NSTextAttachment()
        imageAttachment.image = UIImage(named: county.rawValue)
        let attachmentString = NSAttributedString(attachment: imageAttachment)
        let imageOffsetY:CGFloat = -25.0;
        imageAttachment.bounds = CGRect(x: 0, y: imageOffsetY, width: 60, height: 60)
        let completeText = NSMutableAttributedString(string: "")
        completeText.append(attachmentString)
        let textAfterIcon = NSMutableAttributedString(string: currency.code())
        completeText.append(textAfterIcon)
        self.attributedText = completeText
    }

}
