//
//  비교가능한열거형.swift
//  20220318_매일문법
//
//  Created by Joobang Lee on 2022/03/18.
//

import Foundation

/*
enum Condition: Comparable{
    case terrible
    case bad
    case good
    case great
}

let myCondition: Condition = .great
let yourCondition: Condition = .bad

if myCondition <= yourCondition {
    print("제 상태가 더 좋군요")
} else {
    print("당신 상태가 더 좋군요")
}

enum Device: Comparable{
    case iPhone(version: String)
    case iPad(version: String)
    case macBook
    case iMac
}

var devices: [Device] = []
devices.append(Device.iMac) // 타입 자체를 담았기 때문이다.
print(devices) // [_0220318_매일문법.Device.iMac] 이 타입 값을 출력한다.
print(devices[0]) // iMac 타입의 값을 출력한다.

devices.append(Device.iPad(version: "15.0"))
print(devices[1])
print(devices)
devices.append(Device.iPad(version: "6.1"))
devices.append(Device.iPhone(version: "10.3"))
devices.append(Device.macBook)

let sortedDevices: [Device] = devices
print(sortedDevices)
for i in 0..<sortedDevices.count{
    print(sortedDevices[i])
}
*/
