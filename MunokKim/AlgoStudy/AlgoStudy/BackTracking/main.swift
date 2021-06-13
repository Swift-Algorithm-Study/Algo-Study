//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/06/13.
//

// https://www.acmicpc.net/problem/15654
// Baekjoon 15654번 N과 M (5)

let input: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
let N: Int = input[0]
let M: Int = input[1]
let naturalNumbers: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
    .sorted()
var outputs: [Int] = Array(repeating: 0, count: M)
var isPromisingArray: [Bool] = Array(repeating: true, count: N + 1)

func backTracking(node: Int) {
    guard node < outputs.count else {
        print(outputs.reduce(into: "", { $0 += "\($1) " }))
        return
    }
    
    for (index, naturalNumber) in naturalNumbers.enumerated() {
        // 노드가 답이 되기에 유망한지 판별
        guard isPromisingArray[index] else { continue }
        
        isPromisingArray[index] = false
        
        outputs[node] = naturalNumber
        backTracking(node: node + 1)
        
        isPromisingArray[index] = true
    }
}

backTracking(node: 0)
