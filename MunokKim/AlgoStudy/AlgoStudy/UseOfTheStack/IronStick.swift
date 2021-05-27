//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/23.
//

// https://www.acmicpc.net/problem/10799
// Baekjoon 10799번 쇠막대기

// 레이저: |
//
// (((|(||)) (|)|)) (||)
//     -||-
//   -|-||-- -|-
//  --|-||----|-|-
// ---|-||----|-|-- -||-
//
// => 24
// => 1+1+1+3+1+4+4+1+3+2+1+1+1

import Foundation

let input: String = readLine()!
    .replacingOccurrences(of: "()", with: "|")
var stack: [Character] = []
var pieceCount: Int = 0

for expression in input {
    switch expression {
    case "(":
        stack.append(expression)
        pieceCount += 1
    case "|":
        pieceCount += stack.count
    case ")":
        stack.removeLast()
    default: break
    }
}

print(pieceCount)
