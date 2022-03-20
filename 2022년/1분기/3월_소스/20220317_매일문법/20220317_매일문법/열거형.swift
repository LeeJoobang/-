//
//  School.swift
//  20220317_매일문법
//
//  Created by Joobang Lee on 2022/03/17.
//

import Foundation

/*
print("Hello, World!")

var array: [Int] = [1, 2, 3, 4]
var set: Set<Int> = [1, 2, 3, 4]
var dictionary: [String:Int] = ["a":1, "b":2, "c":3]
var string: String = "String"

print(array.shuffled()) // 뒤죽박죽 된 값의 모습을 표현할 수 있음. => [1, 4, 3, 2]
print(array) // [1, 2, 3, 4]
array.shuffle() //
print(array) // [2, 3, 1, 4] 자체를 뒤죽박죽 섞어 버린다.

print(set.shuffled()) //[1, 3, 2, 4] 섞인 값이 표시된다.
// set.shuffle() 을 작성코자 하였으나 되지 않음. 세트 자체는 순서가 없어 섞을 수가 없다.
print(string.shuffled()) // 스트링도 섞일 수 있음.
print(dictionary.shuffled()) // 딕셔너리도 섞일 수 있음.

//enum School{
//    case primary
//    case elementry
//    case middle
//    case high
//    case college
//    case university
//    case graduate
//}

//enum School : String{
    case primary = "유치원"
    case elementry = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

//var highestEducationLevel: School = School.university
var highestEducationLevel: School = .university // highestEducationLevel 변수 내 university 값을 담음
print(highestEducationLevel)
highestEducationLevel = .graduate
print(highestEducationLevel)
print("저의 최종학력 \(highestEducationLevel) 입니다.")

enum Weekend : String {
    case mon = "월", tue = "화", wed = "수", thur = "목", fri = "금", sat = "토", sun = "일"
}

//enum Weekend : Int {
//    case mon = 12
//    case tue = 13
//    case wed = 14
//    case thur = 15
//    case fri = 16
//    case sat = 17
//    case sun = 18
//}
//var workDay = Weekend.fri
//print("나의 일하는 날은 \(workDay) 입니다.")

var studyDay = Weekend.sun
print("나의 공부하는 날은 \(studyDay.rawValue)요일 입니다.") //나의 공부하는 날은 18일 입니다.
// 각 케이스 내 담은 값을 사용하기 위해서는 rawValue 사용해야 담긴 값이 표현된다.

enum Numbers: Int {
case zero, one, two, three = 100
}

var heightValue = Numbers.three
print(heightValue.rawValue) // 100

let primary = School(rawValue: "유치원")
print(primary) // 옵셔널 값으로 출력됨. Optional(_0220317_매일문법.School.primary)
let graduate = School(rawValue: "대학원")
print(graduate) // 옵셔널 값으로 출력됨. Optional(_0220317_매일문법.School.graduate)


//enum MainDish {
//    case pasta(taste: String)
//    case pizza(dough: String, topping: String)
//    case chicken(withSauce: Bool)
//    case rice
//}
//
//var lunch: MainDish = MainDish.chicken(withSauce: true)
//print(lunch) //chicken(withSauce: true)
//lunch = .pasta(taste: "cream") // 담긴 값을 변경하였다.
//print(lunch) //pasta(taste: "cream") 크림으로 바꾸었다.
//lunch = .pizza(dough: "thin", topping: "tomato") // 런치에 기존에 담긴 파스타 라는 값을 바꿨다.
//print(lunch)
////런치를 고를 때 딱 이정도의 메뉴만 내가 고를 수 있도록 한정 지어주면 거기에 담을 값을 딱 정할 수 있다.
//



enum PastaTaste{
    case cream, tomato
}

enum Pizza{
    case thin, original, cheeseCrust
}

enum PizzaTopping{
    case pepperoni, cheese, bacon
}

enum MainDish{
    case pasta(taste: PastaTaste)
    case pizza(dough: Pizza, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
}

var maindish : MainDish = MainDish.pizza(dough: .original, topping: .cheese)
print(maindish) // pizza(dough: _0220317_매일문법.Pizza.original, topping: _0220317_매일문법.PizzaTopping.cheese)

maindish = .pasta(taste: .tomato)
print(maindish) // pasta(taste: _0220317_매일문법.PastaTaste.tomato)

*/
