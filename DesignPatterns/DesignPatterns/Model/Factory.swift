//
//  Factory.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/26.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

import Foundation

protocol Factory {
    func produceSedan() -> Sedan
    func produceSUV() -> SUV
}

class FactoryA: Factory {
    func produceSedan() -> Sedan{
        return CompactSedan()
    }
    func produceSUV() -> SUV {
        return CompactSUV()
    }
}
class FactoryB: Factory {
    func produceSedan() -> Sedan{
        return MidSizeSedan()
    }
    func produceSUV() -> SUV {
        return MidSizeSUV()
    }
}
class FactoryC: Factory {
    func produceSedan() -> Sedan {
        return FullSizeSedan()
    }
    func produceSUV() -> SUV {
        return FullSizeSUV()
    }
}
