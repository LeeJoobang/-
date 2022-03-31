//
//  옵셔널 정의.swift
//  20220328_매일문법
//
//  Created by Joobang Lee on 2022/03/28.
//

import Foundation
//var myName: String? = "yagom"
//print(myName)
//myName = nil
//print(myName)

func checkOptionalValue(value optionalValue: Any?){
    switch optionalValue {
    case .none:
        print("This optional variable is nil")
    case .some(let value):
        print("Value is \(value).")
    }
}

var myName: String? = "Yagom"
checkOptionalValue(value: myName)
myName = nil
checkOptionalValue(value: myName)

let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers{
    switch number {
    case .some(let value) where value < 0:
    print("negative value! \(value)")
    case .some(let value) where value > 10:
        print("Large value! \(value)")

    case .some(let value):
        print("Value \(value)")
        
    case .none:
        print("nil")
    }
}
