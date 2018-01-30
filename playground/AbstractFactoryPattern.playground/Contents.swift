/**
 Abstract Factory Patternは簡単に言えばFactory Method Patternの拡張概念だ。
 
 長所
 特定なファクトリーのオブジェクトを作ってこれと連関されるオブジェクトを一つのグループに含めてやすく生成して利用できる。
 **/

import Foundation

protocol Unit {
    var name: String { get set }
    func attack(target: Unit)
}

class Zergling: Unit {
    var name: String = "저글링"
    func attack(target: Unit) {
        print("\(self.name)이/가 \(target.name) 공격")
    }
}

class Marin: Unit {
    var name: String = "마린"
    func attack(target: Unit) {
        print("\(self.name)이/가 \(target.name) 공격")
    }
}

class Ultra: Unit {
    var name: String = "울트라"
    func attack(target: Unit) {
        print("\(self.name)이/가 \(target.name) 공격")
    }
}

class Battlecruiser: Unit {
    var name: String = "배틀크루저"
    func attack(target: Unit) {
        print("\(self.name)이/가 \(target.name) 공격")
    }
}

enum UnitType {
    case marin, zergling, battlecruiser, ultra, dron
}

protocol Race {
    func createUnit(type: UnitType) -> Unit?
    func constructBuilding()
}

class Terran: Race {
    func createUnit(type: UnitType) -> Unit? {
        switch type {
        case .marin:
            return Marin()
        case .battlecruiser:
            return Battlecruiser()
        default:
            return  nil
        }
    }
    
    func constructBuilding() {
        print("테란의 팩토리(공장)")
    }
}

class Zerg: Race {
    func createUnit(type: UnitType) -> Unit? {
        switch type {
        case .zergling:
            return Zergling()
        case .ultra:
            return Ultra()
        default:
            return nil
        }
    }
    
    func constructBuilding() {
        print("저그의 팩토리(공장)")
    }
}
//ファクトリーを変わりながら同じオブジェクトを生成して利用できる。
//ファクトリーによって生成されるオブジェクトが変わる事が大事だ。

/**
 使い方
 **/
if let myUnit = Terran().createUnit(type: .marin) {
    if let enemyUnit = Zerg().createUnit(type: .zergling) {
        myUnit.attack(target: enemyUnit)
        enemyUnit.attack(target: myUnit)
    }
}
