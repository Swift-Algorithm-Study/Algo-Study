//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/04/03.
//

// https://www.acmicpc.net/problem/10093
// Baekjoon 10093번 숫자

// 문제
// 두 양의 정수가 주어졌을 때, 두 수 사이에 있는 정수를 모두 출력하는 프로그램을 작성하시오.

// 입력
// 두 정수 A와 B가 주어진다. (1 ≤ A, B ≤ 10¹⁵, A와 B의 차이는 최대 100,000)
// 8 14

// 출력
// 첫째 줄에 두 수 사이에 있는 수의 개수를 출력한다.
// 둘째 줄에는 두 수 사이에 있는 수를 오름차순으로 출력한다.
// 5
// 9 10 11 12 13

import Foundation

let input: [Double] = readLine()!
    .components(separatedBy: " ")
    .compactMap { Double($0) }

let minimum: Int = Int(input.min()!)
let maximum: Int = Int(input.max()!)
var output: [Int] = []

for num in minimum+1..<maximum {
    output.append(num)
}

print(output.count)

print(
    output
        .map { "\($0)" }
        .joined(separator: " ")
)
