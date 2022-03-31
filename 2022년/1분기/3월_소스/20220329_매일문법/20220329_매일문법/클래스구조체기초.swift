//
//  클래스구조체기초.swift
//  20220329_매일문법
//
//  Created by Joobang Lee on 2022/03/29.
//

import Foundation
print("Hello, World!")

struct BasicInformation{
    var name: String
    var age: Int
}
// 구조체의 정의를 함

var yagomInfo: BasicInformation = BasicInformation(name: "bob", age: 99)
yagomInfo.name = "joobang"
yagomInfo.age = 150


class Person{
    var height: Float = 0.0
    var weight: Float = 0.0
    
    deinit{
        print("person클래스의 인스턴스를 소멸합니다.")
    }
}

// 구조체와 다르게 인스턴스 생성시 괄호만 한다. 아하 내부 값을 받는것이 아니라 이미 내부에서 초기화가 되었기 때문이다.
var job: Person? = Person()
job = nil
print(job)

var bob: Person = Person()
bob.height = 100.0
bob.weight = 120.0

let jenny: Person = Person()
jenny.height = 129.0
jenny.weight = 149.1

