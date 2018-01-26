//
//  SUV.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/26.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import Foundation

protocol SUV {
    func assemble()
}
class CompactSUV: SUV {
    func assemble() {
        print("CompactSUVを作りました。")
    }
}
class MidSizeSUV: SUV {
    func assemble() {
        print("MidSizeSUVを作りました。")
    }
}
class FullSizeSUV: SUV {
    func assemble() {
        print("FullSizeSUVを作りました。")
    }
}
