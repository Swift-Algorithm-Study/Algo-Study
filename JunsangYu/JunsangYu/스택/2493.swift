//
//  2493.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/04.
//

// 시간초과....

import Foundation
var result: Array<Int> = []
var stack = readLine()!.split(separator: " ").map { Int($0) ?? 0}

outer : for _ in 0..<Int(readLine()!)! {
    let last = stack.removeLast()

    inner : for i in (0..<(stack.count)).reversed() {
        if last <= stack[i] {
            result.append(i+1)
            continue outer
        }
    }
    result.append(0)
    
}
result.reversed().forEach { val in
    print(val,terminator: " ")
}
