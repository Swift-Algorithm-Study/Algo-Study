//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/23.
//

// https://www.acmicpc.net/problem/4949
// Baekjoon 4949번 균형잡힌 세상

var outputs: [Bool] = [] {
    didSet {
        print("OUTPUTS ", outputs)
    }
}

while let strings: String = readLine(), strings != "." {
    var stack: [Character] = [] {
        didSet {
            print("STACK ", stack)
        }
    }
    
    for char in strings {
        switch char {
        case "(": stack.append(char)
        case "[": stack.append(char)
        case ")":
            if let stackLast: Character = stack.last, stackLast == "(" {
                print("REMOVE ", stack.removeLast())
            }
        case "]":
            if let stackLast: Character = stack.last, stackLast == "[" {
                print("REMOVE ", stack.removeLast())
            }
        default: break
        }
    }
    
    outputs.append(stack.isEmpty)
}

for output in outputs {
    print(output ? "yes" : "no")
}
