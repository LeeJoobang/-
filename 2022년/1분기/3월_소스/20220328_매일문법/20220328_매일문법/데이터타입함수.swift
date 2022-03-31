//
//  데이터타입함수.swift
//  20220328_매일문법
//
//  Created by Joobang Lee on 2022/03/28.
//

import Foundation
func sayHelloWorld(){
    print("Hello, World!")
}

func sayHelloWorld(from myName: String, to name: String){
    print("Hello \(name), i'm \(myName)")
}

func sayGoodbye() -> Void{
    print("Good bye")
}

sayHelloWorld()
sayHelloWorld(from: "joo", to: "bang")
sayGoodbye()

func sayHello(name: String, times: Int) -> String {
    // 이 함수의 타입은 String이다.
    return "Hi"
}

typealias CalculateTwoInts = (Int, Int) -> Int

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multipleTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction1: CalculateTwoInts = addTwoInts
var mathFunction2: CalculateTwoInts = multipleTwoInts

// var mathFunction: (Int, Int) -> Int = addTwoInts(_:_:)

print(mathFunction1(4, 5))
print(mathFunction2(3, 5))

func printMathResult(_ mathFunction: CalculateTwoInts, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 4, 7)

func chooseMathFunction(_ toAdd: Bool) -> CalculateTwoInts {
    return toAdd ? addTwoInts : multipleTwoInts // multipleTwoInts로
}

printMathResult(chooseMathFunction(false), 3, 5)
