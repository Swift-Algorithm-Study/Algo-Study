//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/06/27.
//

// https://www.acmicpc.net/problem/2750
// Baekjoon 2750번 수 정렬하기

let numberOfNumber: Int = Int(readLine()!)!
var outputs: [Int] = []

for _ in 0..<numberOfNumber {
    outputs.append(Int(readLine()!)!)
}

for output in outputs.sorted() {
    print(output)
}
