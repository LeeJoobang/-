//
//  프로퍼티기본값.swift
//  20220331_매일문법
//
//  Created by Joobang Lee on 2022/03/31.
//

import Foundation

struct Area {
    var squareMeter: Double
    
    init(){
        squareMeter = 0.0
    }
}

let room: Area = Area()
print(room.squareMeter) // 0.0

print("Hello, World!")

struct Area {
    var squareMeter: Double = 0.0
    
}

let room: Area = Area()
print(room.squareMeter) // 0.0
