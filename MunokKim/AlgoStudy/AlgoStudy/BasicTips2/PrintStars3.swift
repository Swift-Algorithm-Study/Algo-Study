//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/03/28.
//

// https://www.acmicpc.net/problem/2440
// Baekjoon 2440번 별 찍기 - 3

// 문제
// 첫째 줄에는 별 N개, 둘째 줄에는 별 N-1개, ..., N번째 줄에는 별 1개를 찍는 문제

// 입력
// 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.

// 출력
// 첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.

let totalLine: Int = Int(readLine()!)!

for lineNumber in 0..<totalLine {
    let starsCount: Int = totalLine - lineNumber
    var lineString: String = ""
    
    for _ in 0..<starsCount {
        lineString = lineString + "*"
    }
    print(lineString)
}
