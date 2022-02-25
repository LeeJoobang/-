//
//  enum_Condition.swift
//  test_enum
//
//  Created by Joobang Lee on 2022/02/25.
//

import Foundation

enum Condition: Comparable { // Comparable 프로토콜 채택을 통해 비교 가능, 앞에 있는 케이스가 더 작은 값이 된다.
    case terrible
    case bad
    case good
    case great
}
