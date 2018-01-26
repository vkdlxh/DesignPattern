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
    let name = Notification.Name(rawValue: "status")
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func saveAction(_ sender: Any) {
        dm.name = nameTextField.text
        dm.phone = phoneTextField.text
        updateLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Singleton Pattern"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        registObserver()
        updateLabel()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: name, object: nil)
    }
    
    func registObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateLabel), name: name, object: nil)
    }
    
    @objc func updateLabel() {
        nameLabel.text = dm.name
        phoneLabel.text = dm.phone
        let status = dm.setStatus()
        statusLabel.text = "\(status.rawValue)中です。"
    }

}
