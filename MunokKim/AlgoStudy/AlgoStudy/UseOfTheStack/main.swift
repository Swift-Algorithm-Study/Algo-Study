//
//  File.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/23.
//

// https://www.acmicpc.net/problem/4889
// Baekjoon 4889번 안정적인 문자열

var outputs: [Int] = []

while let str: String = readLine(), !str.contains("-") {
    var stack: [Character] = []
    var operationCount: Int = 0
    
    for char in str {
        switch char {
        case "{": stack.append(char)
        case "}":
            if let stackLast: Character = stack.last, stackLast == "{" {
                stack.removeLast()
            } else {
                operationCount += 1
                stack.append("{")
            }
        default: break
        }
    }
    
    while !stack.isEmpty {
        operationCount += 1
        stack.removeLast(2)
    }
    
    outputs.append(operationCount)
}

for (index, output) in outputs.enumerated() {
    print("\(index + 1). \(output)")
}
