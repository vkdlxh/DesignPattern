//
//  DataManager.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/24.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import Foundation

class DataManager {
    // Singleton
    static let sharedInstance = DataManager()
    private init() { }
    
    var name: String?
    var phone: String?
    
}
