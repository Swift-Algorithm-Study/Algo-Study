//
//  main.swift
//  AlgoStudy
//
//  Created by eazel5 (Munok) on 2021/06/02.
//

// https://www.acmicpc.net/problem/1697
// Baekjoon 1697번 숨바꼭질

struct NumberingNode: Equatable {
    let number: Int
    let node: Int
    
    init(number: Int, node: Int) {
        self.number = number
        self.node = node
    }
}

let input: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
let N: Int = input[0]
let K: Int = input[1]
var searchedQueue = Queue<Int>([])
var queue = Queue<NumberingNode>([])

func search(_ origin: NumberingNode, nearby: NumberingNode) {
    let addedNumber: Int = origin.number + 1
    queue.pushLast(NumberingNode(number: addedNumber, node: nearby.node))
}

queue.pushLast(NumberingNode(number: 0, node: N))

while !queue.isEmpty {
    let currentNode: NumberingNode = queue.popFirst()!
    
    if currentNode.node == K {
        print(currentNode.number)
        break
    }
    
    if !searchedQueue.contains(currentNode.node) {
        searchedQueue.pushLast(currentNode.node)
        search(currentNode, nearby: NumberingNode(number: currentNode.number, node: currentNode.node - 1))
        search(currentNode, nearby: NumberingNode(number: currentNode.number, node: currentNode.node + 1))
        search(currentNode, nearby: NumberingNode(number: currentNode.number, node: currentNode.node * 2))
    }
}
