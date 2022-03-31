//
//  타입메서드.swift
//  20220330_매일문법
//
//  Created by Joobang Lee on 2022/03/30.
//

import Foundation

struct SystemVolume {
    static var volume: Int = 4
    
    static func mute(){
        Self.volume = 0 // SystemVolume.volume = 0과 같은 표현이다.
                       // self.volume = 0과 같은 표현이다.
    }
}

class Navigation {
    var volume: Int = 5
    
    func guideWay(){
        SystemVolume.mute()
    }
    
    func finishhGuideWay(){
        SystemVolume.volume = self.volume // 기존 재생원으로 음량 복구
    }
}

SystemVolume.volume = 10
let myNavi: Navigation = Navigation()

myNavi.guideWay()
print(SystemVolume.volume)
myNavi.finishhGuideWay()
print(SystemVolume.volume)
