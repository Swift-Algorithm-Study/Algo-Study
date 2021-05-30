//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/29.
//

let input: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
let drawingHeight: Int = input[0]
let drawingWidth: Int = input[1]
let horizontalMap: [Bool] = Array(repeating: Bool(), count: drawingWidth)
var drawingMap: [[Bool]] = Array(repeating: horizontalMap, count: drawingHeight)
var visitedMap: [[Bool]] = Array(repeating: horizontalMap, count: drawingHeight)
var queue: [(Int, Int)] = []
var drawingCount: Int = 0
var biggestSize: Int = 0

func searchNear(_ coordinate: (Int, Int)) {
    let (x, y) = coordinate
    guard x >= 0 && y >= 0 && x < drawingHeight && y < drawingWidth
    else { return }
    
    if drawingMap[x][y] && !visitedMap[x][y] {
        queue.append((x, y))
        visitedMap[x][y] = true
    }
}

for index in 0..<drawingHeight {
    let horizontalDrawing = readLine()!
        .split(separator: " ")
        .map { $0 == "1" }
    drawingMap[index] = horizontalDrawing
    visitedMap[index] = horizontalDrawing
        .map { _ in false }
}

for i in 0..<drawingHeight {
    for j in 0..<drawingWidth {
        if drawingMap[i][j] && !visitedMap[i][j] {
            queue.append((i, j))
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
