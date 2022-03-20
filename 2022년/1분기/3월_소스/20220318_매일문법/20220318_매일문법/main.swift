//
//  main.swift
//  20220318_매일문법
//
//  Created by Joobang Lee on 2022/03/18.
//

import Foundation

var names: [String] = ["Joker", "Jenny", "Nova", "Yagom"]

//while names.isEmpty == false {
//    print("goodbye \(names.removeFirst())")
//    //removeFirst 는 요소를 삭제함과 동시에 삭제한 요소를 반환한다.
//}

repeat {
    print("goodbye \(names.removeFirst())")
    // 구문을 우선적으로 실행시키고 조건이 맞는지 확인 후에
    // 맞을 경우 구문을 시키고 맞지 않으면 종료시킨다.
    
} while names.isEmpty == true
