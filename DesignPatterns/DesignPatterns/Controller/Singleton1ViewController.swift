//
//  Singleton1ViewController.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/24.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import UIKit

class Singleton1ViewController: UIViewController {
    
    let dm = DataManager.sharedInstance

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBAction func saveAction(_ sender: Any) {
        dm.name = nameTextField.text
        dm.phone = phoneTextField.text
        
        loadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Singleton Pattern"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loadData()
    }
    
    func loadData() {
        nameLabel.text = dm.name
        phoneLabel.text = dm.phone
    }

}
