//
//  타입프로퍼티.swift
//  20220330_매일문법
//
//  Created by Joobang Lee on 2022/03/30.
//

import Foundation

print("Hello, World!")

class AClass{
    static var typeProperty: Int = 0
    
    static var instanceProperty: Int = 0 {
        didSet {
            self.typeProperty = instanceProperty + 100
        }
    }
    
    static var typeComputedProperty: Int {
        get {
            return typeProperty
        }
        set {
            typeProperty = newValue
        }
    }
}

AClass.typeProperty = 123
let classInstance: AClass = AClass()
AClass.instanceProperty = 100

print(AClass.typeProperty)
print(AClass.typeComputedProperty)
