//
//  항목순회.swift
//  20220317_매일문법
//
//  Created by Joobang Lee on 2022/03/17.
//

import Foundation

enum School : String, CaseIterable {
    case primary = "유치원"
    case elementry = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
    
    static var allCases: [School] {
        let all : [School] = [.primary, .elementry, .middle, .high, .college, .university, .graduate]
        return all
    }
}

let allCases: [School] = School.allCases
print(allCases) // [_0220317_매일문법.School.primary, _0220317_매일문법.School.elementry, _0220317_매일문법.School.middle, _0220317_매일문법.School.high, _0220317_매일문법.School.college, _0220317_매일문법.School.university, _0220317_매일문법.School.graduate] -> 근데 왜 이렇게 표시되는거지???

// 원시값 역시 표시가 가능하다. 한번 해볼까?

