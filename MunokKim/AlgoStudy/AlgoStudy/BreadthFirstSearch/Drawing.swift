//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/29.
//

// https://www.acmicpc.net/problem/1926
// Baekjoon 1926번 그림

let input: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
let drawingHeight: Int = input[0]
let drawingWidth: Int = input[1]
let row: [Bool] = Array(repeating: Bool(), count: drawingWidth)
var drawingMap: [[Bool]] = Array(repeating: row, count: drawingHeight)
var visitedMap: [[Bool]] = Array(repeating: row, count: drawingHeight)
var queue: [(Int, Int)] = []
var drawingCount: Int = 0
var biggestSize: Int = 0

func searchNear(_ coordinate: (Int, Int)) {
    let (x, y) = coordinate
    guard x >= 0 && y >= 0 && x < drawingWidth && y < drawingHeight
    else { return }
    
    if drawingMap[y][x] && !visitedMap[y][x] {
        queue.append((x, y))
        visitedMap[y][x] = true
    }
}

for index in 0..<drawingHeight {
    let row: [Bool] = readLine()!
        .split(separator: " ")
        .map { $0 == "1" }
    drawingMap[index] = row
    visitedMap[index] = row
        .map { _ in false }
}

for i in 0..<drawingHeight {
    for j in 0..<drawingWidth {
        if drawingMap[i][j] && !visitedMap[i][j] {
            queue.append((j, i))
            visitedMap[i][j] = true
            drawingCount += 1
            
            var drawingSize: Int = 0
            while !queue.isEmpty {
                let (x, y) = queue.removeFirst()
                drawingSize += 1
                searchNear((x, y - 1))
                searchNear((x - 1, y))
                searchNear((x, y + 1))
                searchNear((x + 1, y))
            }
            
            if biggestSize < drawingSize {
                biggestSize = drawingSize
            }
        }
    }
}

print(drawingCount)
print(biggestSize)
