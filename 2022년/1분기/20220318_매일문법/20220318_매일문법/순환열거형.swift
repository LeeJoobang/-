//
//  순환열거형.swift
//  20220318_매일문법
//
//  Created by Joobang Lee on 2022/03/18.
//

import Foundation

/*
print("Hello, World!")

indirect enum ArithmeticExpression{
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplecation(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5) // 숫자 5를 담았다.
let four = ArithmeticExpression.number(4) // 숫자 4를 담았다.
let sum = ArithmeticExpression.addition(five, four) // 합계 하기 위한 값을 담았다.
let final = ArithmeticExpression.multiplecation(sum, ArithmeticExpression.number(2))
print(final) // 숫자 5, 4, 2가 담겨있다.

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case ArithmeticExpression.number(let value):
        return value
    case ArithmeticExpression.addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case ArithmeticExpression.multiplecation(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let result: Int = evaluate(final)
print("( 5 + 4 ) * 2 = \(result)")
*/
