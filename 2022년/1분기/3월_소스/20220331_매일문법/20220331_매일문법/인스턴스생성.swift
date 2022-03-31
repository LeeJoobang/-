//
//  인스턴스생성.swift
//  20220331_매일문법
//
//  Created by Joobang Lee on 2022/03/31.
//

import Foundation

class SomeClass{
    init()
}

struct SomeStruct{
    init()
}

enum SomeEnum{
    case someCase
    
    init() { // 열거형은 초기화할 때 반드시 case 하나가 되어야 한다.
        self = .someCase
    }
}
