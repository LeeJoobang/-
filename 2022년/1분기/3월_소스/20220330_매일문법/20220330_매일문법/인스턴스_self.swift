//
//  인스턴스_self.swift
//  20220330_매일문법
//
//  Created by Joobang Lee on 2022/03/30.
//

import Foundation


struct LevelStruct{
    var level: Int = 0{
        didSet {
            print("Level: \(level)")
        }
    }
    
    mutating func levelUP(){
        print("Level Up")
        level += 1
    }
    
    mutating func levelDown(){
        print("Level Down")
        level -= 1
        if level < 0 {
            reset()
        }
    }
    
    mutating func jumpLevel(to level: Int){
        print("Jump Level \(level)")
        self.level = level
    }
    
    mutating func reset(){
        print("Reset")
        self = LevelStruct()
    }
        
}

var levelClassInstance: LevelStruct = LevelStruct()
levelClassInstance.levelUP()
levelClassInstance.levelDown()
levelClassInstance.levelDown()
levelClassInstance.jumpLevel(to: 3)

