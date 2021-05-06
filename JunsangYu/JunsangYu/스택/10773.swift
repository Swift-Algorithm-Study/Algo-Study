//
//  10773.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/03.
//

import Foundation

let k = Int(readLine()!) ?? 0
var stack: Array<Int> = []

for _ in 0..<k {
    let val = Int(readLine()!) ?? 0
    
    if val == 0 {
        if !stack.isEmpty {
            stack.removeLast()
        }
    } else {
        stack.append(val)
    }
}
print(stack.reduce(0, { $0 + $1}))
