//
//  멤버이니셜라이저.swift
//  20220331_매일문법
//
//  Created by Joobang Lee on 2022/03/31.
//

import Foundation

struct Point{
    var x: Double = 0.0
    var y: Double = 0.0
}

struct Size{
    var width: Double = 0.0
    var height: Double = 0.0
}

let point: Point = Point(x: 0, y: 0)
let size: Size = Size(width: 50.0, height: 50.0)

let somePoint: Point = Point()
let someSize: Size = Size(width: 50)
let anotherPoint: Point = Point(y: 100)
print(point)
print(size)
print(somePoint)
print(someSize)
print(anotherPoint)
