//
//  1158.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/03.
//

// 어렵ㅜㅜㅜ
// index값을 증가시키다가 queue길이보다 길어지는 경우 나머지값으로 이어 삭제

import Foundation

var nums = readLine()!.split(separator: " ")

var n = Int(nums[0]) ?? 0
var k = Int(nums[1]) ?? 0

var queue = Array(1...n)

var index = k-1
print("<",terminator: "")
while queue.count != 1 {
    if index >= queue.count {
        index %= queue.count
    }
    let val = queue.remove(at: index)
    print("\(val), ",terminator: "")
    index += (k-1)
}
print("\(queue[0])>")
