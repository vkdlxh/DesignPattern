//
//  Currency.swift
//  DesignPatterns
//
//  Created by jeonsangjun on 2018/01/25.
//  Copyright © 2018年 jeonsangjun. All rights reserved.
//

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

enum Country: String {
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
