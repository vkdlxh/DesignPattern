//
//  BitCoinTableViewCell.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/31.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import UIKit

class BitCoinTableViewCell: UITableViewCell {

    @IBOutlet weak var countryLabel: CurrencyLabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
