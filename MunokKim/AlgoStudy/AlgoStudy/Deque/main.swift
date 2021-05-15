//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/16.
//

// https://www.acmicpc.net/problem/5430
// Baekjoon 5430번 AC

import Foundation

for _ in 0..<Int(readLine()!)! {
    var isReversed: Bool = false
    let functions: String = readLine()!
    readLine()
    var enqueue = readLine()!
        .replacingOccurrences(of: "[|]", with: "")
        .split(separator: ",")
        .compactMap { Int(String($0)) }
    var dequeue: [Int] = []
    
    functionsLoop: for function in functions {
        switch function {
        case "R":
            isReversed.toggle()
            dequeue = enqueue.reversed()
        case "D":
            if !enqueue.isEmpty {
                if isReversed {
                    enqueue.removeLast()
                    dequeue = enqueue.reversed()
                } else {
                    dequeue.removeLast()
                    enqueue = dequeue.reversed()
                }
            } else {
                print("error")
                break functionsLoop
            }
        default: break
        }
    }
    
    let _deque: [Int] = isReversed ? dequeue : enqueue
    
    let output = _deque
        .map { String($0) }
        .joined(separator: ",")
    
    print("[", terminator: "")
    print(output)
    print("]")
}
