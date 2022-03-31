//
//  저장프로퍼티초기값.swift
//  20220329_매일문법
//
//  Created by Joobang Lee on 2022/03/29.
//

import Foundation

struct CoordinatePoint{
    var x: Int = 0
    var y: Int = 0
}
let yagomPoint: CoordinatePoint = CoordinatePoint()
let wizplanPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 4)
//초깃값을 넘기지 않아도 된다.
print("야곰 포인트: \(yagomPoint.x), \(yagomPoint.y)")
print("위즈 포인트: \(wizplanPoint.x), \(wizplanPoint.y)")
//값을 변경할 수 있다.


class Position{
    var point: CoordinatePoint = CoordinatePoint()
    var name: String = "Unknown"
//클래스는 무조건 init을 해야한다. 아까전엔 그렇게 떴었던 것을 각 값의 init가 되지 않아서였다.
}

let yagomPosition: Position = Position()
yagomPosition.point = yagomPoint
yagomPosition.name = "Yagom"

print(yagomPosition.point.y)
print(yagomPosition.name)
