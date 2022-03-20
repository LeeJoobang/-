//
//  enum_school.swift
//  test_enum
//
//  Created by Joobang Lee on 2022/02/25.
//

import Foundation


enum School: String, CaseIterable {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "졸업"
}


enum WeekDays: Character {
    case mon = "월", tue = "화", wed = "수", thur = "목", fri = "금", sat = "토", sun = "일"
}


//열거형에 대한 모든 항목을 알 수 있는 방법
//protocol - CaseIterable을 사용하는 것이다
//그렇게 되면 allcases를 불러올 수 있다.
//형식은 School에 대한 Array를 써야 한다.

