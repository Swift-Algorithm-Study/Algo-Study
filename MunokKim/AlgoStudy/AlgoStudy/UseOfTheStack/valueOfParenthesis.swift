//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/23.
//

// https://www.acmicpc.net/problem/2504
// Baekjoon 2504번 괄호의 값

// (()[[]])([])
// ([])() , 2+3+3
// () , 2+3*3+3*2
// 
// 2 + 3*3
// => 28

let input: String = readLine()!
var stack: [Character] = []
var explanationStack: [Any] = []
var output: Int = 0

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
    case "[":
        stack.append(parenthesis)
    case "]":
        if let stackLast: Character = stack.last, stackLast == "[" {
            stack.removeLast()
        } else {
            stack.append(parenthesis)
        }
    default: break
    }
}

if !stack.isEmpty {
    print(0)
} else {
    for parenthesis in input {
        switch parenthesis {
        case "(":
            explanationStack.append(parenthesis)
        case ")":
            if
                let stackLast: Character = explanationStack.last as? Character,
                stackLast == "(" {
                
                explanationStack.removeLast()
                explanationStack.append(Int(2))
            } else if
                explanationStack.count >= 2,
                let stackLast: Int = explanationStack.last as? Int,
                let stackSecondLast: Character = explanationStack[explanationStack.count - 2] as? Character,
                stackSecondLast == "(" {
                
                explanationStack.removeLast(2)
                explanationStack.append(stackLast * 2)
            }
            
            if
                explanationStack.count >= 2,
                let stackLast: Int = explanationStack.last as? Int,
                let stackSecondLast: Int = explanationStack[explanationStack.count - 2] as? Int {
                
                explanationStack.removeLast(2)
                explanationStack.append(stackSecondLast + stackLast)
            }
        case "[":
            explanationStack.append(parenthesis)
        case "]":
            if
                let stackLast: Character = explanationStack.last as? Character,
                stackLast == "[" {
                
                explanationStack.removeLast()
                explanationStack.append(Int(3))
            } else if
                explanationStack.count >= 2,
                let stackLast: Int = explanationStack.last as? Int,
                let stackSecondLast: Character = explanationStack[explanationStack.count - 2] as? Character,
                stackSecondLast == "[" {
                
                explanationStack.removeLast(2)
                explanationStack.append(stackLast * 3)
            }
            
            if
                explanationStack.count >= 2,
                let stackLast: Int = explanationStack.last as? Int,
                let stackSecondLast: Int = explanationStack[explanationStack.count - 2] as? Int {
                
                explanationStack.removeLast(2)
                explanationStack.append(stackSecondLast + stackLast)
            }
        default: break
        }
    }
    
    print(explanationStack[0])
}
