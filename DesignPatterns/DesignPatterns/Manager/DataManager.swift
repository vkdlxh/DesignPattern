//
//  DataManager.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/24.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import Foundation

enum WorkType: String {
    case working = "working"   // 仕事
    case breaking = "breaking" // 休み
    case goOut = "goOut"     // 外出
}

class DataManager {
    // Singleton
    static let sharedInstance = DataManager()
    private init() { }
    
    var name: String?
    var phone: String?
    private var status: WorkType = .working
    
    func changeStatus(workType: WorkType) {
        status = workType
        let name = Notification.Name(rawValue: "status")
        NotificationCenter.default.post(name: name, object: nil)
    }
    
    func setStatus() -> WorkType {
        return status
    }
    
}
