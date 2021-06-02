//
//  main.swift
//  AlgoStudy
//
//  Created by eazel5 (Munok) on 2021/06/01.
//

// https://www.acmicpc.net/problem/7576
// Baekjoon 7576번 토마토

struct Coordinate: Equatable {
    let x: Int
    let y: Int
    
    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}

let input: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
let mazeHeight: Int = input[0]
let mazeWidth: Int = input[1]
var mazeMap: [[Character]] = []
var queue = Queue<Coordinate>([])
var escapeTime: Int = 0
var isEscape: Bool = false

for _ in 0..<mazeHeight {
    let row: [Character] = readLine()!
        .split(separator: " ")
        .map { Character(String($0)) }
    mazeMap.append(row)
}

for i in 0..<mazeHeight {
    for j in 0..<mazeWidth {
        if mazeMap[i][j] == "J" || mazeMap[i][j] == "F" {
            queue.pushLast(Coordinate(j, i))
        }
    }
}


