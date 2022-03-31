//
//  초기화위임.swift
//  20220331_매일문법
//
//  Created by Joobang Lee on 2022/03/31.
//

import Foundation

enum Student{
    case elementary, middle, high, adult
    case none
    
    init(){
        self = .none
    }
    
    init(koreanAge: Int){
        switch koreanAge{
        case 8...13:
            self = .elementary
        case 14...16:
            self = .middle
        case 17...19:
            self = .high
        case 20...25:
            self = .adult
        default:
            self = .none
        }
    }
    
    init(bornAt: Int, currentYear: Int) {
        self.init(koreanAge: currentYear - bornAt + 1)
    }
}

var younger: Student = Student(koreanAge: 16)
print(younger)

younger = Student(bornAt: 2004, currentYear: 2022)
print(younger)
