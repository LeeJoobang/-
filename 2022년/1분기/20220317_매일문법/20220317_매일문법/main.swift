//
//  main.swift
//  20220317_매일문법
//
//  Created by Joobang Lee on 2022/03/17.
//

import Foundation


enum ArithmeticExpression{
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}
