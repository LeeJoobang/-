//
//  함수이니셜라이즈.swift
//  20220331_매일문법
//
//  Created by Joobang Lee on 2022/03/31.
//

import Foundation

struct Student{
    var name: String?
    var number: Int?
}

class SchoolClass{
    var students: [Student] = {
        var arr: [Student] = [Student]()
        
        for num in 1...15{
            var student: Student = Student(name: nil, number: num)
            arr.append(student)
        }
        return arr
    }()
}

let myClass: SchoolClass = SchoolClass()
print(myClass.students[0].number)
