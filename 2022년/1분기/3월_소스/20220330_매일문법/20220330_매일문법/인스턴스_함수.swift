//
//  인스턴스_함수.swift
//  20220330_매일문법
//
//  Created by Joobang Lee on 2022/03/30.
//

import Foundation

struct Puppy{
    var name: String = "멍멍이"
    
    func callAsFunction(){
        print("멍멍")
    }
    
    func callAsFunction(destination: String){
        print("\(destination) 으로 달려갑니다.")
    }
    
    func callAsFunction(something: String, times: Int){
        print("\(something)을 \(times)번 반복합니다. 으로 달려갑니다.")
    }
    
    func callAsFunction(color: String) -> String{
        return "\(color)응가"
    }
    
    mutating func callAsFunction(name: String){ //수정을 하기 때문이다.
        self.name = name
    }
}

var doggy: Puppy = Puppy()
doggy.callAsFunction()
doggy()
doggy.callAsFunction(destination: "집")
doggy(destination: "뒷동산")
doggy(something: "재주넘기", times: 3)
print(doggy(color: "무지개색"))
doggy(name: "댕댕이")
print(doggy.name)
