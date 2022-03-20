//
//  main.swift
//  test_enum
//
//  Created by Joobang Lee on 2022/02/25.
//

import Foundation
 
// dish
var dinner: MainDish

dinner = .pasta(taste: "크림")
print(dinner)

dinner = .pizza(dough: "치즈크러스트", topping: "불고기")
print(dinner)

// School
let highestEducationLevel: School = .university
print(highestEducationLevel)

let allCases: [School] = School.allCases
print(allCases)

// day
let today:WeekDays = WeekDays.fri
print(today)
print(today.rawValue)

//condition
let myCondtion: Condition = .good
let yourCondition: Condition = .bad

if myCondtion >= yourCondition {
    print("내가 더 좋네")
} else {
    print("니가 더 좋구나")
}

