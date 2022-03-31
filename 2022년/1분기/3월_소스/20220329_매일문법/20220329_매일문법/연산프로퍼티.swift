//
//  연산프로퍼티.swift
//  20220329_매일문법
//
//  Created by Joobang Lee on 2022/03/29.
//

import Foundation


struct CoordinatePoint{
    var x: Int = 0
    var y: Int = 0
}

class Position{
    lazy var point: CoordinatePoint = CoordinatePoint()
    let name: String
    
    init(name: String) { // 초기화를 이용할 것만 해도 된다. 그리고 하단에서 해당 프로퍼티의 값을 할당해줘도 된다.
        self.name = name
    }
}

let yagomPosition: Position = Position(name: "joo")
//yagomPosition.point = CoordinatePoint(x: 60, y: 80) // 이런식으로 줄 수 있는 것이다.
print(yagomPosition.point)
