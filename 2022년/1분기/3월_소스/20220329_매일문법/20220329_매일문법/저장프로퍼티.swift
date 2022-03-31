//
//  저장프로퍼티.swift
//  20220329_매일문법
//
//  Created by Joobang Lee on 2022/03/29.
//

import Foundation

struct CoordinatePoint{
    var x: Int
    var y: Int
}
let yagomPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)
print(yagomPoint)

class Position{
    var point: CoordinatePoint
    let name: String
//클래스는 무조건 init을 해야한다. 아까전엔 그렇게 떴었던 것을 각 값의 init가 되지 않아서였다.
    init(name: String, point: CoordinatePoint){
        self.name = name
        self.point = point
    }
}

let yagomPosition: Position = Position(name: "Joo", point: yagomPoint)
print(yagomPosition)

