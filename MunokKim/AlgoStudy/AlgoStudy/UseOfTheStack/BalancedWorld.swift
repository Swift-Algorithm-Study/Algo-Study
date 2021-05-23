//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/23.
//

// https://www.acmicpc.net/problem/4949
// Baekjoon 4949번 균형잡힌 세상

var outputs: [Bool] = []

while let str: String = readLine(), str != "." {
    var stack: [Character] = []
    
    for char in str {
        switch char {
        case "(": stack.append(char)
        case "[": stack.append(char)
        case ")":
            if let stackLast: Character = stack.last, stackLast == "(" {
                stack.removeLast()
            } else {
                stack.append(char)
            }
        case "]":
            if let stackLast: Character = stack.last, stackLast == "[" {
                stack.removeLast()
            } else {
                stack.append(char)
            }
        default: break
        }
    }
    
    outputs.append(stack.isEmpty)
}

for output in outputs {
    print(output ? "yes" : "no")
}
