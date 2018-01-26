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
    let working = Notification.Name(rawValue: WorkType.working.rawValue)
    let breaking = Notification.Name(rawValue: WorkType.breaking.rawValue)
    let goOut = Notification.Name(rawValue: WorkType.goOut.rawValue)
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: working, object: nil)
        NotificationCenter.default.removeObserver(self, name: breaking, object: nil)
        NotificationCenter.default.removeObserver(self, name: goOut, object: nil)
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func saveAction(_ sender: Any) {
        dm.name = nameTextField.text
        dm.phone = phoneTextField.text
        
        loadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Singleton Pattern"
        statusLabel.text = "\(dm.status)中です。"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        registObserver()
        loadData()
    }
    
    func registObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateLabel), name: working, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateLabel), name: breaking, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateLabel), name: goOut, object: nil)
    }
    
    @objc func updateLabel() {
        switch dm.status {
        case .working:
            statusLabel.text = "\(dm.status)中です。"
        case .breaking:
            statusLabel.text = "\(dm.status)中です。"
        case .goOut:
            statusLabel.text = "\(dm.status)中です。"
        }
    }

    
    func loadData() {
        nameLabel.text = dm.name
        phoneLabel.text = dm.phone
    }

}
