//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/04/08.
//

// 방번호

import Foundation

let N = readLine()!.map{ Int(String($0))! }
var numbers: [Int] = Array(repeating: 0, count: 10)

for i in N {
    numbers[i] += 1
}

let temp = (numbers[6] + numbers[9] + 1) / 2
numbers[6] = temp
numbers[9] = temp

print(numbers.max()!)
