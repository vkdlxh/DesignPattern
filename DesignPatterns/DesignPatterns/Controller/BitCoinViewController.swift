//
//  BitCoinViewController.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/31.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import UIKit

class BitCoinViewController: UIViewController {

    var nations = [Country]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        createCountry()
        // Do any additional setup after loading the view.
    }

    
    func createCountry() {
        nations.append(Country.greece)
        nations.append(Country.spain)
        nations.append(Country.uk)
        nations.append(Country.unitedStates)
        tableView.reloadData()
        
    }


}

extension BitCoinViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BitCoinCell", for: indexPath) as? BitCoinTableViewCell {
            cell.countryLabel.countyFlag(county: nations[indexPath.row])
            cell.currencyLabel.text = "t"
            return cell
        }
        return UITableViewCell()
        
    }
    
    
}
