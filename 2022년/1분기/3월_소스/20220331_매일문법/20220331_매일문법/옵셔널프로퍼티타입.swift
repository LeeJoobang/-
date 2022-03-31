//
//  옵셔널프로퍼티타입.swift
//  20220331_매일문법
//
//  Created by Joobang Lee on 2022/03/31.
//

import Foundation

class Person{
    var name: String
    var age: Int? //인스턴스가 사용되는 동안 값을 꼭 갖지 않아도 되는 저장 프로퍼티가 있다면 해당 프로퍼티를 옵셔널로 선언할 수 있습니다.
    
    init(name: String){
        self.name = name
    }
}

let yagom: Person = Person(name: "yagom")
print(yagom.name)

yagom.age = 99
print(yagom.age)
