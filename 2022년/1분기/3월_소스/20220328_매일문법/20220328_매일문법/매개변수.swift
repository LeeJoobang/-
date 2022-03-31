//
//  매개변수.swift
//  20220328_매일문법
//
//  Created by Joobang Lee on 2022/03/28.
//

import Foundation
print("Hello, World!")

func sayHello(_ name: String, _ times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!"
    }
    return result
}
print(sayHello("Chole", 2))

func sayHello(to name: String, _ times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello 2 \(name)"
    }
    return result
}

func sayHello(to name: String, repeatCount times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello 3 \(name)"
    }
    return result
}

print(sayHello(to: "you", 3))
print(sayHello(to: "enum", repeatCount: 4))

func sayHello(name: String, times: Int = 3) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello 4 \(name)"
    }
    return result
}

print(sayHello(name: "hana"))

func sayHelloToFriends(me: String, friends names: String...) -> String{
    var result: String = ""
    
    for friend in names {
        result += "Hello \(friend)" + " "
    }
    result += "I'm " + me + "!"
    return result
}

print(sayHelloToFriends(me: "joobang", friends: "hoo", "yoo", "koo"))

print(sayHelloToFriends(me: "Joobang"))

var numbers: [Int] = [1, 2, 3]

func nonReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func referenceParameter(_ arr: inout [Int]){
    arr[1] = 1
}

print(nonReferenceParameter(numbers))
print(numbers[1])

print(referenceParameter(&numbers))
print(numbers[1])
