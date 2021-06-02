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
var foundTime: Int = 0

func search(nearby numberingNode: NumberingNode) {
//    guard x >= 0 && y >= 0 && x < mazeWidth && y < mazeHeight, mazeMap[y][x] == 1
    guard !searchedQueue.contains(numberingNode.node) else { return }
    
    mazeMap[y][x] = mazeMap[origin.1][origin.0] + 1
    queue.append((x, y))
}

queue.pushLast(NumberingNode(number: 0, node: N))

while !queue.isEmpty {
    let currentNode: NumberingNode = queue.popFirst()!
    search(nearby: NumberingNode(number: currentNode.number, node: currentNode.node - 1))
    search(nearby: NumberingNode(number: currentNode.number, node: currentNode.node + 1))
    search(nearby: NumberingNode(number: currentNode.number, node: currentNode.node * 1))
}

print(foundTime)
