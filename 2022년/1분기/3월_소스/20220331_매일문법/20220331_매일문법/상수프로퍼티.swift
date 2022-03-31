//
//  상수프로퍼티.swift
//  20220331_매일문법
//
//  Created by Joobang Lee on 2022/03/31.
//

import Foundation

class Person{
    let name: String
    var age: Int?
    
    init(name: String){
        self.name = name
    }
}

let yagom: Person = Person(name: "yagom")
yagom.name = "Eric"
