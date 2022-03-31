//
//  main.swift
//  20220328_매일문법
//
//  Created by Joobang Lee on 2022/03/28.
//

import Foundation


var myName: String! = "yagom"
print(myName)
myName = nil

if let name = myName {
    print("My name is \(name)")
} else {
    print("myName == nil")
}
 
