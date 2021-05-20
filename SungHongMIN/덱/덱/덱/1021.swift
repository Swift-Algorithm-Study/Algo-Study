//
//  main.swift
//  덱
//
//  Created by 민성홍 on 2021/05/20.
//

import Foundation

let comm = readLine()!.split(separator : " " ).map{Int(String($0))!}
let N = comm[0]
let targets = readLine()!.split(separator : " " ).map{Int(String($0))!}
var queue = Array(1...N)
var minCount = 0

func find(_ x : Int ) {
    var leftCount = 0
    var rightCount = 0
    for i in 0..<queue.count {
        if queue[i] == x {
            leftCount = i
            rightCount = queue.count - i
            break
        }
    }
    if leftCount < rightCount {
        for _ in 0..<leftCount {
            queue.append(queue.removeFirst())
        }
        minCount += leftCount
    }else {
        for _ in 0..<rightCount {
            queue.insert(queue.removeLast(), at: 0)
        }
        minCount += rightCount
    }
    queue.removeFirst()
}

targets.forEach{find($0)}
print(minCount)
