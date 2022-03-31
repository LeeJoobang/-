//
//  실패가능한이니셜라이즈.swift
//  20220331_매일문법
//
//  Created by Joobang Lee on 2022/03/31.
//

import Foundation

class Person{
    let name: String
    var age: Int?
    
    init?(name: String){
        
        if name.isEmpty{
            return nil
        }
        self.name = name
    }
    init?(name: String, age: Int){
        if name.isEmpty || age < 0 {
            return nil
        }
        self.name = name
        self.age = age
    }
}

let yagom: Person? = Person(name: "yagom", age: 99)

if let person: Person = yagom{
    print(person.name)
} else {
    print("Person wasn't initialized")
}

let chope: Person? = Person(name: "chope", age: -10)

if let person: Person = chope {
    print(person.name)
} else {
    print("Person wasn't initialized")
}

let eric: Person? = Person(name: "", age: 30)

if let person: Person = eric{
    print(person.name)
} else {
    print("Person wasn't initialized")
}
