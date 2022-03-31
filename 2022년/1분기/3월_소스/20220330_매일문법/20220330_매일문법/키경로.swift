//
//  키경로.swift
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
print(type(of: \Person.name))
print(type(of: \Stuff.name))


