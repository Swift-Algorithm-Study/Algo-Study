//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/15.
//

// https://www.acmicpc.net/problem/1021
// Baekjoon 1021번 회전하는 큐

let firstLineInput: [Substring] = readLine()!
    .split(separator: " ")
let dequeSize: Int = Int(firstLineInput[0])!
let locationCount: Int = Int(firstLineInput[1])!
var locations: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
var deque = Queue<Int>(Array(1...dequeSize))
var operationCount: Int = 0

for (index, location) in locations.enumerated() {
    while location != deque.first! {
        operationCount = operationCount + 1
        
        if let indexOfLocation: Int = deque.firstIndex(of: location),
           indexOfLocation <= deque.count / 2 {
            deque.pushLast(deque.popFirst()!)
        } else {
            deque.pushFirst(deque.popLast()!)
        }
//        print(operationCount)
//        deque.enqueue.forEach { print($0, terminator: ", ") }
//        print("")
//        deque.dequeue.forEach { print($0, terminator: ", ") }
//        print("")
//        print("============================")
    }
    
    deque.popFirst()
}

print(operationCount)
