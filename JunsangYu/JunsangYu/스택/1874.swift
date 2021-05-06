//
//  1874.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/04.
//

// 틀림.... 결과는 같은데 다른 예외가 있나봄
// 다시풀기

import Foundation

let n = Int(readLine()!) ?? 0
var stack: Array<Int> = []
var resultStr: Array<Character> = []
var size: Int = 1

for _ in 0..<n {
    let val = Int(readLine()!) ?? 0
    
    while size <= val {
        stack.append(size)
        resultStr.append("+")
        size += 1
    }
    if stack[stack.endIndex-1] > val {
        resultStr.append("x")
    } else {
        stack.removeLast()
        resultStr.append("-")
    }
    
}

if stack.isEmpty {
    resultStr.forEach { char in
        print(char)
    }
} else {
    print("No")
}
