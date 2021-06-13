//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/06/13.
//

// https://www.acmicpc.net/problem/15649
// Baekjoon 15649번 N과 M (1)

let input: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
let N: Int = input[0]
let M: Int = input[1]
var outputs: [Int] = Array(repeating: 0, count: M)
var isPromisingArray: [Bool] = Array(repeating: true, count: N + 1)

func backTracking(node: Int) {
    guard node < outputs.count else {
        print(outputs.reduce(into: "", { $0 += "\($1) " }))
        return
    }
    
    for i in 1...N {
        // 노드가 답이 되기에 유망한지 판별
        guard isPromisingArray[i] else { continue }
        
        isPromisingArray[i] = false
        outputs[node] = i
        backTracking(node: node + 1)
        isPromisingArray[i] = true
    }
}

backTracking(node: 0)
