//
//  Singleton2ViewController.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/24.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import UIKit

class Singleton2ViewController: UIViewController {

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
    
    @IBAction func workingAction(_ sender: Any) {
        dm.status = .working
//        dm.changeStatus(workType: .working)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func breakingAction(_ sender: Any) {
        dm.status = .breaking
//        dm.changeStatus(workType: .breaking)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goOutAction(_ sender: Any) {
        dm.status = .goOut
//        dm.changeStatus(workType: .goOut)
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        // Do any additional setup after loading the view.
    }

    func loadData() {
        nameLabel.text = dm.name
        phoneLabel.text = dm.phone
    }

}
