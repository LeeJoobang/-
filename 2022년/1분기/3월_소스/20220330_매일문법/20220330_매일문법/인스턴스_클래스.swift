//
//  인스턴스_클래스.swift
//  20220330_매일문법
//
//  Created by Joobang Lee on 2022/03/30.
//

import Foundation

class LevelClass{
    var level: Int = 0{
        didSet {
            print("Level: \(level)")
        }
    }
    
    func levelUP(){
        print("Level Up")
        level += 1
    }
    
    func levelDown(){
        print("Level Down")
        level -= 1
        if level < 0 {
            reset()
        }
    }
    
    func jumpLevel(to: Int){
        print("Jump Level \(to)")
        level += to
    }
    
    func reset(){
        print("Reset")
        level = 0
    }
        
}

var levelClassInstance: LevelClass = LevelClass()
levelClassInstance.levelUP()
levelClassInstance.levelDown()
levelClassInstance.levelDown()
levelClassInstance.jumpLevel(to: 3)
