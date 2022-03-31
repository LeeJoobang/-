//
//  중첩함수1.swift
//  20220328_매일문법
//
//  Created by Joobang Lee on 2022/03/28.
//

import Foundation

typealias MoveFunc = (Int) -> Int

func goRight(_ currentPosition: Int) -> Int {
    return currentPosition + 1
}

func goLeft(_ currentPosition: Int) -> Int {
    return currentPosition - 1
}

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
    return shouldGoLeft ? goLeft : goRight
}

var position = -3

let moveToZero: MoveFunc = functionForMove(position > 0) // position이 0보다 클때 true이다. true이면 왼쪽으로 간다. false면 오른쪽으로 간다.
print("원점으로 갑시다.")
while position != 0 {
    print("\(position)...")
    position = moveToZero(position)
}
print("원점 도착")
