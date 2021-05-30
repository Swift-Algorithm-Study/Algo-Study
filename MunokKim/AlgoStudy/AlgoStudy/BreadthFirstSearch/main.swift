//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/30.
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
let storeWidth: Int = input[0]
let storeHeight: Int = input[1]
var storeMap: [[Int]] = []
var queue = Queue<Coordinate>([])
var totalRipeDay: Int = 0

func search(_ origin: Coordinate, near coordinate: (Int, Int)) {
    let (x, y) = coordinate
    guard x >= 0 && y >= 0 && x < storeWidth && y < storeHeight, storeMap[y][x] == 0
    else { return }
    
    let ripeDay: Int = storeMap[origin.y][origin.x] + 1
    storeMap[y][x] = ripeDay
    totalRipeDay = max(totalRipeDay, ripeDay)
    queue.pushLast(Coordinate(x, y))
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
            queue.pushLast(Coordinate(j, i))
        }
    }
}

while !queue.isEmpty {
    if let coordinate: Coordinate = queue.popFirst() {
        search(coordinate, near: (coordinate.x, coordinate.y - 1))
        search(coordinate, near: (coordinate.x - 1, coordinate.y))
        search(coordinate, near: (coordinate.x, coordinate.y + 1))
        search(coordinate, near: (coordinate.x + 1, coordinate.y))
    }
}

let unripedTomatos: [Int] = storeMap
    .flatMap { $0.filter { $0 == 0 } }
if unripedTomatos.isEmpty {
    print(totalRipeDay == 0 ? totalRipeDay : totalRipeDay - 1)
} else {
    print(-1)
}
