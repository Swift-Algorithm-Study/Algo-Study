//
//  1021.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/15.
//

import Foundation

let nm = readLine()!.split(separator: " ")
var queue = Array(1...Int(nm.first!)!)
var minCount = 0

var mArr = readLine()!.split(separator: " ").map { Int($0)! }

for num in mArr {
    var leftCount = 0
    var rightCount = 0

    for idx in 0..<queue.count {
        if queue[idx] == num {
            leftCount = idx
            rightCount = queue.count - idx
            break
        }
    }
    if leftCount < rightCount {
        for _ in 0..<leftCount {
            queue.append(queue.removeFirst())
        }
        minCount += leftCount
    } else {
        for _ in 0..<rightCount {
            queue.insert(queue.removeLast(), at: 0)
        }
        minCount += rightCount
    }
    queue.removeFirst()
}

print(minCount)
