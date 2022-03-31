//
//  변수willset.swift
//  20220329_매일문법
//
//  Created by Joobang Lee on 2022/03/29.
//

import Foundation



//struct CoordinatePoint{
//    var x: Int
//    var y: Int
//
//    var oppositePoint: CoordinatePoint{
//        get{
//            return CoordinatePoint(x: -x, y: -y)
//        }
//
//        set {
//            x = -newValue.x
//            y = -newValue.y
//        }
//    }
//}

class Accout {
    var credit: Int = 500 // get, set은 있다.
    //    { // 저장프로퍼티, 3번째
    //        willSet(newValue) { // newValue를 생략한 것이다. 2번째
    //            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
    //        }
    //
    //        didSet (oldValue) { // oldValue를 생략한 것이다. 4번째
    //            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
    //        }
    //    }
    
    var dollarValue: Double {
        get { // 접근자:값에 접근할 수 있도록 한다. 프로퍼티에 값을 접근할 수 있도록 한다. 읽어오고
            return Double(credit) / 1000.0
        }
        set { // 설정자: 값을 설정한다? 7.7가 newValue에 담긴다. 저장한다.
            credit = Int(newValue * 1000)
            //            print("잔액을 \(newValue)달러로 변경 중입니다.")
        }
    }
}
let temp: Accout = Accout()
temp.dollarValue = 1000.0
//print(temp.credit)
//print(temp.dollarValue)
//temp.credit = 1000 //첫번째 newValue
//print(temp.dollarValue) // 0.0

//
//class ForeignAccount: Accout{
//    override var dollarValue: Double {
//        willSet {
//            print("잔액이 \(dollarValue) 달러에서 \(newValue)달러로 변경될 예정입니다.")
//        }
//
//        didSet {
//            print("잔액이 \(oldValue) 달러에서 \(dollarValue)달러로 변경되었습니다.")
//        }
//    }
//}
//
//let myAccount: ForeignAccount = ForeignAccount()
//myAccount.credit = 1000
//
//myAccount.dollarValue = 2

class Student {
    var realName = "joobang"
    
    var name: String {
        get {
            return realName }
        set {
            realName = newValue
        }
    }
}
let gucci = Student()
print(gucci.name) // 프린트를 주방으로 처리한다.
gucci.name = "gucci" // 저장을 하고 79번 set만 하고 끝낸다.
print(gucci.name) // 다시한번 프린트를 수행하는데 읽는 값은 77번의 get이 된다.
