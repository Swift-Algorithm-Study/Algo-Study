//
//  File.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/06/29.
//

// https://www.acmicpc.net/problem/11651
// Baekjoon 11651번 좌표 정렬하기 2

let numberOfDots: Int = Int(readLine()!)!
var coordinates: [(x: Int, y: Int)] = []

for _ in 0..<numberOfDots {
    let input: [Int] = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
    let coordinate: (x: Int, y: Int) = (x: input[0], y: input[1])
    coordinates.append(coordinate)
}

coordinates.sort { $0.y == $1.y ? $0.x < $1.x : $0.y < $1.y }

for coordinate in coordinates {
    print("\(coordinate.x) \(coordinate.y)")
}
