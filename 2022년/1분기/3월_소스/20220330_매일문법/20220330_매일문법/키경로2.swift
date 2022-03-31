//
//  키경로2.swift
//  20220330_매일문법
//
//  Created by Joobang Lee on 2022/03/30.
//

import Foundation


class Person{
    var name: String
    
    init(name: String){
        self.name = name
    }
}

struct Stuff{
    var name: String
    var owner: Person
}

let yagom = Person(name: "yagom")
let haha = Person(name: "haha")
let macbook = Stuff(name: "MacbookPro", owner: yagom)
var iMac = Stuff(name: "iMac", owner: yagom)
let iPhone = Stuff(name: "iPhone", owner: haha)
 
//키 경로
