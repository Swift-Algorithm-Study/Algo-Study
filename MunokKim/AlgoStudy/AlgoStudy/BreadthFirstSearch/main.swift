//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/30.
//

// https://www.acmicpc.net/problem/7576
// Baekjoon 7576번 토마토

let input: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
let storeWidth: Int = input[0]
let storeHeight: Int = input[1]
var storeMap: [[Int]] = []
var queue: [(Int, Int)] = []
var totalRipeDay: Int = 0

func search(_ origin: (Int, Int), near coordinate: (Int, Int)) {
    let (x, y) = coordinate
    guard x >= 0 && y >= 0 && x < storeWidth && y < storeHeight, storeMap[y][x] == 0
    else { return }
    
    let ripeDay: Int = storeMap[origin.1][origin.0] + 1
    storeMap[y][x] = ripeDay
    totalRipeDay = max(totalRipeDay, ripeDay)
    queue.append((x, y))
}

for _ in 0..<storeHeight {
    let row: [Int] = readLine()!
        .split(separator: " ")
        .map { Int($0)! }
    storeMap.append(row)
}

for i in 0..<storeHeight {
    for j in 0..<storeWidth {
        if storeMap[i][j] == 1 {
            queue.append((j, i))
        }
    }
}

while !queue.isEmpty {
    let (x, y) = queue.removeFirst()
    search((x, y), near: (x, y - 1))
    search((x, y), near: (x - 1, y))
    search((x, y), near: (x, y + 1))
    search((x, y), near: (x + 1, y))
}

let unripedTomatos: [Int] = storeMap
    .flatMap { $0.filter { $0 == 0 } }
if unripedTomatos.isEmpty {
    print(totalRipeDay == 0 ? totalRipeDay : totalRipeDay - 1)
} else {
    print(-1)
}
