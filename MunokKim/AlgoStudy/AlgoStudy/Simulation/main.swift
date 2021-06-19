//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/06/19.
//

// https://www.acmicpc.net/problem/13335
// Baekjoon 13335번 트럭

let inputs1: [Int] = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }
let inputs2: [Int] = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }
let (numberOfTrucks, lengthOfBridge, maxLoad) = (inputs1[0], inputs1[1], inputs1[2])
var weightsOfTrucks =  Queue<Int>(inputs2)
var bridgeQueue = Queue<Int>(Array(repeating: 0, count: lengthOfBridge))
var currentLoad: Int = 0
var unitTime: Int = 0

while !weightsOfTrucks.isEmpty || currentLoad > 0 {
    if
        let loadToEnter: Int = weightsOfTrucks.first,
        let loadToEscape: Int = bridgeQueue.first,
        currentLoad + loadToEnter - loadToEscape <= maxLoad
    {
        let newLoad: Int = weightsOfTrucks.popFirst()!
        bridgeQueue.pushLast(newLoad)
        currentLoad += newLoad
    } else {
        bridgeQueue.pushLast(0)
    }
    
    currentLoad -= bridgeQueue.popFirst()!
    unitTime += 1
}

print(unitTime)
