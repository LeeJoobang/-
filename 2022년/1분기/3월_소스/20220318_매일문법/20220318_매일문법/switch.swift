//
//  switch.swift
//  20220318_매일문법
//
//  Created by Joobang Lee on 2022/03/18.
//

import Foundation
/*
 let intergerValue: Int = 5

 switch intergerValue {
 case 0:
     print("value == zero")
 case 1...10:
     print("value == 1~10")
 case Int.min..<0, 101..<Int.max:
     print("value < 0 or value > 100")
     break
 default:
     print("10 < value <= 100")
 }

 let doubleValue: Double = 3.0

 switch doubleValue{ // 초기화 시간 값을 스위치에 넣어 그 값을 비교한다.
 case 0:
     print("value == zero")
 case 1.5...10.5:
     print("1.5 <= value <= 10.5")
 default:
     print("value == \(doubleValue)")
 }

 //let stringValue: String = "Liam Neeson"
 //
 //switch stringValue{
 //case "yagom":
 //    print("he is yagom")
 //case "jay":
 //    print("he is jay")
 //case "jenny", "joker", "nova":
 //    print("he or she is \(stringValue)")
 //default:
 //    print("\(stringValue) said i don't know who you are")
 //}

 //각 케이스 별 실행해야 할 코드가 만약 비어있게 된다면 오류를 발생시키게 된다.

 //fallthrough의 사용?

 let stringValue: String = "Joker"

 switch stringValue {
 case "yagom":
     print("He is yagom")
 case "Joker": // 조커에 걸려서 그 다음 구문을 곧바로 실행하고 마친다.
     fallthrough
 case "Jay":
     print("He is Jay")
 case "Jenny":
     fallthrough // 다음 구문으로 넘긴다.
 case "Nova":
     print("He or She is \(stringValue)")
 default:
     print("\(stringValue) said I don't know who you are")
 }

 typealias NameAge = (name: String, age: Int)

 //let tupleValue: NameAge = (name: "yagom", age: 50)
 let tupleValue: NameAge = ("yagom", 99) // 윗줄, 이번줄 둘다 표현 가능하다.
 print(tupleValue) //(name: "yagom", age: 50)
 switch tupleValue{
 case ("yagom", 50):
     print("정확하게 맞췄습니다.")
 case (_, 99): // 나이를 먼저 했기 때문에 그 값을 보여주는 것이다. 만약 이름을 위에 놓고 이름만 맞았으면 이름이 먼저 표시된다. 맞을 때까지 돈다. 스위치가 다 안맞으면 디폴트를 한다. 그 다음 것이 맞아 표시하려면 default를 사용한다.
     print("나이만 맞았습니다. 나이: \(tupleValue.age)")
 case ("yagom", _):
     print("이름만 맞혔습니다. 이름: \(tupleValue.name)")
 default:
     print("누구시죠?")
 }

 let position: String = "사원"
 let forYear: Int = 1
 let intern: Bool = false

 switch position {
 case "사원" where intern == true :
     print("인턴입니다.")
 case "사원" where forYear < 2 && intern == false: //추가적인 조건을 주기 위해서는 where 절을 추가함으로써 내용을 반영해야 한다.
     print("신입사원입니다.")
 case "사원" where forYear > 5:
     print("연식 좀 된 사원입니다.")
 case "사원":
     print("사원입니다.")
 case "대리":
     print("대리입니다.")
 default:
     print("사장입니까?")
 }

 enum School{
     case primary, element, middle, high, college, university, graduate
 }

 let final: School = .graduate

 switch final{
 case .primary:
     print("유치원입니다.")
 case .element:
     print("초등학교입니다.")
 case .middle:
     print("중학교입니다.")
 case .high:
     print("고등학교입니다.")
 case .college:
     print("대학입니다.")
 case .university:
     print("대학교입니다.")
 case .graduate:
     print("대학원입니다.")
 }
 // 나중에 열거형에 case를 추가하면 기존의 switch  구문은 커뮤ㅏ일 오류가 발생한다. switch 구문이 모든 case에 대비하지 못하기 때문이다. 이를 대비하기 위해 unknown이라는 속성을 이용할 수 있다.

 enum Menu{
     case pizza, chicken, hamburger
 }

 let lunchMenu: Menu = .chicken

 switch lunchMenu{
 case .chicken:
     print("반반 무 많이")
 case .pizza:
     print("도우는 얇게")
 @unknown case _: //default 대신해서 'case _:'를 사용한다.
     print("오늘의 메뉴가 뭐죠?")
 }
 /*
  menu라는 열거형은 나중에 case를 넣을 수 있을 것이라고 생각했음.
  그래서 열거형의 값을 처리하는 switch 마지막 case를 와일드 카드로 추가해둠
  만약 나중에 추가를 한다고 해보자.이렬 경우 @unknown을 쓸 수 있다. 위예제에 추가하겠다.
  그럴 경우 모든 switch 구문이 모든 case에 대응하지 않는다는 컴파일러 경고를 받을 수 있게 된다.
  
  */
 */
