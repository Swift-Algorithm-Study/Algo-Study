//
//  10871.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/04/30.
//

// print 할때 개행하지않고 출력하는 방법, terminator를 활용

import Foundation

let nums = readLine()!.split(separator: " ")

let N = Int(nums[0]) ?? 0
let X = Int(nums[1]) ?? 0

let inputData = readLine()!.split(separator: " ")

for i in 0..<N {
    if let data = Int(inputData[i]) {
        if data < X {
            print(data, terminator: " ")
        }
    }
}
