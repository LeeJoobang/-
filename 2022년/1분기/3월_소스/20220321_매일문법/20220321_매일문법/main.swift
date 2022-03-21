//  20220321_매일문법
//
//  Created by Joobang Lee on 2022/03/21.
//

import Foundation


func sayHello(_ myName: String, _ times: Int) -> String{
    var result: String = "" // 초기화를 시켜줬다.
    
    for _ in 0..<times{
        result += "Hello \(myName)!\n"
    }
    return result
}

//print(sayHello(from: "joo", to: "bang"))

//print(sayHello("joo", "bang"))

//print(sayHello(myName: "joo", yourName: "bang"))

print(sayHello("selly", 5))
//중복정의

func sayHello(to name: String, repeatCount times: Int = 3) -> String{
    var result: String = ""
    for _ in 0..<times{
        result += "Hello \(name)!\n"
    }
    return result
}

//print(sayHello(to: "bbang", repeatCount: 2))
print(sayHello(to: "gang", repeatCount: 5)) // 기본값을 주면 입력하지 않아도 그 값을 확인할 수 있다.
