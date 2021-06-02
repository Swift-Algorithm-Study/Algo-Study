//
//  main.swift
//  AlgoStudy
//
//  Created by eazel5 (Munok) on 2021/06/01.
//

// https://www.acmicpc.net/problem/4179
// Baekjoon 4179번 불!

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
var mazeMap: [[String]] = []
var queue = Queue<Coordinate>([])
var escapeTime: Int = 0
var isEscape: Bool = false

func search(_ origin: Coordinate, nearby coordinate: (Int, Int)) {
    let (x, y) = coordinate
    guard x >= 0 && y >= 0 && x < mazeWidth && y < mazeHeight, mazeMap[y][x] != "#"
    else { return }
    
    let originValue: String = mazeMap[origin.y][origin.x]
    
//    let ripeDay: Int = storeMap[origin.y][origin.x] + 1
    switch originValue {
    case "J":
        guard mazeMap[y][x] == "." else { return }
        mazeMap[y][x] = "1"
        if x == 0 || y == 0 || x == mazeWidth - 1 || y == mazeHeight - 1 {
            escapeTime = 2
            isEscape = true
        }
    case "F":
        guard mazeMap[y][x] != "F" else { return }
        mazeMap[y][x] = "F"
    default:
        mazeMap[y][x] = "\(Int(originValue)! + 1)"
        if x == 0 || y == 0 || x == mazeWidth - 1 || y == mazeHeight - 1 {
            escapeTime = Int(originValue)! + 2
            isEscape = true
        }
    }
    
    queue.pushLast(Coordinate(x, y))
}

for _ in 0..<mazeHeight {
    let row: [String] = readLine()!
        .map { String($0) }
    mazeMap.append(row)
}

for i in 0..<mazeHeight {
    for j in 0..<mazeWidth {
        if mazeMap[i][j] == "J" {
            queue.pushFirst(Coordinate(j, i))
        } else if mazeMap[i][j] == "F" {
            queue.pushLast(Coordinate(j, i))
        }
    }
}

while !queue.isEmpty, !isEscape {
    let coordinate: Coordinate = queue.popFirst()!
    search(coordinate, nearby: (coordinate.x, coordinate.y - 1))
    search(coordinate, nearby: (coordinate.x - 1, coordinate.y))
    search(coordinate, nearby: (coordinate.x, coordinate.y + 1))
    search(coordinate, nearby: (coordinate.x + 1, coordinate.y))
}

print(isEscape ? escapeTime : "IMPOSSIBLE")
