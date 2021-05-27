//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/23.
//

// https://www.acmicpc.net/problem/9012
// Baekjoon 9012번 괄호

for _ in 0..<Int(readLine()!)! {
    let input: String = readLine()!
    var stack: [Character] = []
    
    for parenthesis in input {
        switch parenthesis {
        case "(":
            stack.append(parenthesis)
        case ")":
            if let stackLast: Character = stack.last, stackLast == "(" {
                stack.removeLast()
            } else {
                stack.append(parenthesis)
            }
        default: break
        }
    }
    
    print(stack.isEmpty ? "YES" : "NO")
}
