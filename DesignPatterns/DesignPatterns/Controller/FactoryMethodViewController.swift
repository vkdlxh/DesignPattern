//
//  FactoryMethodViewController.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/25.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import UIKit

class FactoryMethodViewController: UIViewController {
    
    let usa = Country.unitedStates
    let spain = Country.spain
    let greece = Country.greece
    
    var nations = [Country]()
    
    @IBOutlet weak var symbolLabel: UILabel!
    
    @IBOutlet weak var currencyLabel: CurrencyLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setArray()
        currencyLabel.countyFlag(county: "greece")
    }

    func setArray() {
        nations.append(usa)
        nations.append(spain)
        nations.append(greece)
    }

}

extension FactoryMethodViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nations.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nations[row].rawValue
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if let currency = CurrencyFactory.currency(for: nations[row]) {
            symbolLabel.text = currency.symbol()
        }

    }
}

