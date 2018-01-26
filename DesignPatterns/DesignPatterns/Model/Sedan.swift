//
//  Sedan.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/26.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import Foundation

protocol Sedan {
    func assemble()
}
class CompactSedan: Sedan {
    func assemble() {
        print("CompactSedanを作りました。")
    }
}
class MidSizeSedan: Sedan {
    func assemble() {
        print("MidSizeSedanを作りました。")
    }
}
class FullSizeSedan: Sedan {
    func assemble() {
        print("FullSizeSedanを作りました。")
    }
}

