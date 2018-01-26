//
//  AbstractFactoryViewController.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/26.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import UIKit

class AbstractFactoryViewController: UIViewController {
    
    let factoryA = FactoryA()
    let factoryB = FactoryB()
    let factoryC = FactoryC()

    @IBAction func assembleCompactSedanActin(_ sender: Any) {
        factoryA.produceSedan().assemble()
    }
    
    @IBAction func assembleMidSizeSedanAction(_ sender: Any) {
        factoryB.produceSedan().assemble()
    }
    
    @IBAction func assembleFullSizeSedanAction(_ sender: Any) {
        factoryC.produceSedan().assemble()
    }
    
    @IBAction func assembleCompactSUV(_ sender: Any) {
        factoryA.produceSUV().assemble()
    }
    
    @IBAction func assembleMidSizeSUV(_ sender: Any) {
        factoryB.produceSUV().assemble()
    }
    
    @IBAction func assembleFullSizeSUV(_ sender: Any) {
        factoryC.produceSUV().assemble()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
