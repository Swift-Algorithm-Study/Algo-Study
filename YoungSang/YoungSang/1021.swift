//
//  1021.swift
//  YoungSang
//
//  Created by 유저 on 2021/05/20.
//

import Foundation

let cmd = readLine()!.split(separator: " ").map() {Int($0)!}
let numbers = readLine()!.split(separator: " ").map() {Int($0)!}
let n = cmd[0]
let m = cmd[1]
var que = [Int](1...n)

var cnt = 0

for num in numbers{

    var leftCount = 0
    var rightCount = 0
    
    for index in 0..<que.count {
        if que[index] == num {
            leftCount = index
            rightCount = que.count - index
            break
        }
    }
    if leftCount < rightCount {
        for _ in 0..<leftCount {
            que.append(que.removeFirst())
        }
        cnt += leftCount
    } else {
        for _ in 0..<rightCount {
            que.insert(que.removeLast(), at: 0)
        }
        cnt += rightCount
    }
    que.removeFirst()
}
print(cnt)


