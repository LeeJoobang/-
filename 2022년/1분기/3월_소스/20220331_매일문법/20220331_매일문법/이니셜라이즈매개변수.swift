//
//  이니셜라이즈매개변수.swift
//  20220331_매일문법
//
//  Created by Joobang Lee on 2022/03/31.
//

import Foundation

struct Area{
    var squareMeter: Double
    
    init(fromPy py: Double){ // 외부 내부 : 타입
        squareMeter = py * 3.3058
    }
    
    init(fromSquareMeter squareMeter: Double){
        self.squareMeter = squareMeter
    }
    
    init(value: Double){
        squareMeter = value
    }
    
    init(_ value: Double){
        squareMeter = value
    }
}

let roomOne: Area = Area(fromPy: 15.0)
print(roomOne.squareMeter)

let roomTwo: Area = Area(fromSquareMeter: 33.06)
print(roomTwo.squareMeter)

let roomThree: Area = Area(value: 30.0)
print(roomThree.squareMeter)

let roomFour: Area = Area(55.0)
print(roomFour.squareMeter)

