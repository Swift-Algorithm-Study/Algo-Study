//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/30.
//

// https://www.acmicpc.net/problem/2178
// Baekjoon 2178번 미로 탐색

let input: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
let mazeHeight: Int = input[0]
let mazeWidth: Int = input[1]
var mazeMap: [[Int]] = []
var queue: [(Int, Int)] = []

func search(_ origin: (Int, Int), nearby coordinate: (Int, Int)) {
    let (x, y) = coordinate
    guard x >= 0 && y >= 0 && x < mazeWidth && y < mazeHeight, mazeMap[y][x] == 1
    else { return }
    
    mazeMap[y][x] = mazeMap[origin.1][origin.0] + 1
    queue.append((x, y))
}

for _ in 0..<mazeHeight {
    let row: [Int] = readLine()!
        .map { Int(String($0))! }
    mazeMap.append(row)
}

queue.append((0, 0))

while !queue.isEmpty {
    let (x, y) = queue.removeFirst()
    search((x, y), nearby: (x, y - 1))
    search((x, y), nearby: (x - 1, y))
    search((x, y), nearby: (x, y + 1))
    search((x, y), nearby: (x + 1, y))
}

print(mazeMap[mazeHeight - 1][mazeWidth - 1])
