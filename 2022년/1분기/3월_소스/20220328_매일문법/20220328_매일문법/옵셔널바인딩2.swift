//
//  옵셔널바인딩2.swift
//  20220328_매일문법
//
//  Created by Joobang Lee on 2022/03/28.
//

import Foundation

var myName: String? = "yagom"
var yourName: String? = nil

if let name = myName, let friend = yourName {
    print("We are friend \(name) & \(friend)")
}
// friend에 바인딩 되지 않으므로 실행되지 않습니다.
yourName = "eric"

if let name = myName, let friend = yourName {
    print("We are friend! \(name), \(friend)")
}
//We are friend! yagom, eric

