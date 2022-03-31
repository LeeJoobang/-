//
//  값참조타입.swift
//  20220329_매일문법
//
//  Created by Joobang Lee on 2022/03/29.
//

import Foundation

struct BasicInfomation{
    let name: String
    var age: Int
}

var yagomInfo: BasicInfomation = BasicInfomation(name: "bob", age: 99)
yagomInfo.age = 100

print(yagomInfo)
var friendInfo: BasicInfomation = yagomInfo

print("bob age:\(yagomInfo.age)") // 동일한 값이 할당되었다.
print("friend age:\(friendInfo.age)") // 동일한 값이 할당되었다.

friendInfo.age = 999

print("bob age:\(yagomInfo.age)")
print("friend age:\(friendInfo.age)")


class Person{
    var height: Float = 0.0
    var weight: Float = 0.0
}

var yagom: Person = Person()
var friend: Person = yagom
print("yagom height: \(yagom.height)")
print("friend height: \(friend.height)")
friend.height = 185.5
print("yagom height: \(yagom.height)") // 오! friend는 yagom의 값을 참조하기 때문에 야곰의 값도 바뀐다.
print("friend height: \(friend.height)")

func changeBasicInfo(_ info: BasicInfomation) {
    var copiedInfo: BasicInfomation = info
    copiedInfo.age = 1
    print(copiedInfo.age)
}
func changePersonInfo(_ info: Person) {
    info.height = 155.3
}

changeBasicInfo(yagomInfo)
print("야곰 나이: \(yagomInfo.age)")
changePersonInfo(yagom)
print("야곰 키: \(yagom.height)")


