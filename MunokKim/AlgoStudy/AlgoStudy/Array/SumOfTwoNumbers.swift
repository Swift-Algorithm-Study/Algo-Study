//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/04/04.
//

// https://www.acmicpc.net/problem/3273
// Baekjoon 3273번 두 수의 합

//문제
//n개의 서로 다른 양의 정수 a1, a2, ..., an으로 이루어진 수열이 있다. ai의 값은 1보다 크거나 같고, 1000000보다 작거나 같은 자연수이다. 자연수 x가 주어졌을 때, ai + aj = x (1 ≤ i < j ≤ n)을 만족하는 (ai, aj)쌍의 수를 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 수열의 크기 n이 주어진다. 다음 줄에는 수열에 포함되는 수가 주어진다. 셋째 줄에는 x가 주어진다. (1 ≤ n ≤ 100000, 1 ≤ x ≤ 2000000)
//9
//5 12 7 10 9 1 2 3 11
//13
//
//출력
//문제의 조건을 만족하는 쌍의 개수를 출력한다.
//3

import Foundation

let numbersCount: Int = Int(readLine()!)!
let numbers: [Int] = readLine()!
    .components(separatedBy: " ")
    .compactMap { Int($0) }
    .sorted()

let intX: Int = Int(readLine()!)!
var fairCount: Int = 0
var startPointer: Int = 0
var endPointer: Int = numbersCount - 1

while (startPointer < endPointer) {
    let sum = numbers[startPointer] + numbers[endPointer]
    
    if sum == intX {
        fairCount = fairCount + 1
    }
    
    if sum <= intX {
        startPointer = startPointer + 1
    } else {
        endPointer = endPointer - 1
    }
}

print(fairCount)
