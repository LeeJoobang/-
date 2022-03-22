//
//  main.swift
//  20220322_매일알고리즘
//
//  Created by Joobang Lee on 2022/03/22.
//

import Foundation

print("Hello, World!")

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dicT: [Int:Int] = [:]
        for (index, number) in nums.enumerated(){
            if let index1 = dicT[target - number]{
                if index != index1{
                    return [index1, index]
                }
            }
            dicT[number] = index
        }
        return[0]
    }
}

let solution = Solution()
print(solution.twoSum([2,7,11,15], 9))
print(solution.twoSum([3,2,4], 6))
print(solution.twoSum([3,3], 6))
