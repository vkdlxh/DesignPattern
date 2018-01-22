/**
 FactoryMethodPatternはオブジェクトを生成するインターフェース定義するものの、
 実際のオブジェクトの生成は該当オブジェクトが属するサーブクラスに任せる。
 
 ソースコードの参考サイト : https://github.com/ochococo/Design-Patterns-In-Swift/blob/master/Design-Patterns.playground/Pages/Creational.xcplaygroundpage/Contents.swift
 **/

import Foundation

protocol Currency {
    func symbol() -> String
    func code() -> String
}

class Euro : Currency {
    func symbol() -> String {
        return "€"
    }
    
    func code() -> String {
        return "EUR"
    }
}

class UnitedStatesDolar : Currency {
    func symbol() -> String {
        return "$"
    }
    
    func code() -> String {
        return "USD"
    }
}

enum Country {
    case unitedStates, spain, uk, greece
}

enum CurrencyFactory {
    static func currency(for country:Country) -> Currency? {
        
        switch country {
        case .spain, .greece :
            return Euro()
        case .unitedStates :
            return UnitedStatesDolar()
        default:
            return nil
        }
        
    }
}

/**
 使い方
 CurrencyFactoryというFactoryを作った後、Factoryにどんなタイプのオブジェクトを作ろうかの情報を伝達すると、
 Factoryは該当オブジェクトを生成して生成されたオブジェクトは該当オブジェクトの同一なCurrencyを利用できる。
 詳細な行動はサーブクラスに定義した内容によって変わる。
 **/
let noCurrencyCode = "No Currency Code Available"

CurrencyFactory.currency(for: .greece)?.code() ?? noCurrencyCode
CurrencyFactory.currency(for: .spain)?.code() ?? noCurrencyCode
CurrencyFactory.currency(for: .unitedStates)?.code() ?? noCurrencyCode
CurrencyFactory.currency(for: .uk)?.code() ?? noCurrencyCode
