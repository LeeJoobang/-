//
//  옵셔널바인딩1.swift
//  20220328_매일문법
//
//  Created by Joobang Lee on 2022/03/28.
//

import Foundation

var myName: String? = "yagom"
print(type(of: myName))
if let name = myName {
    print("My name is \(name)")
    print(type(of: name))

} else {
    print("myName == nil")
}

