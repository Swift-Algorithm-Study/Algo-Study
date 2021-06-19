//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/06/13.
//

// https://www.acmicpc.net/problem/15651
// Baekjoon 15651번 N과 M (3)

let input: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
let N: Int = input[0]
let M: Int = input[1]
var outputs: [String] = []

func backTracking(node: Int) {
    guard node < M else {
        print(outputs.joined(separator: " "))
        return
    }
    
    for i in 1...N {
        outputs.append(String(i))
        backTracking(node: node + 1)
        outputs.popLast()
    }
}

backTracking(node: 0)
