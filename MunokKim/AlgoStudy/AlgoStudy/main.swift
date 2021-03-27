//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/03/27.
//

// https://www.acmicpc.net/problem/2480
// Baekjoon 2480번 주사위 세개

// 문제
// 1에서부터 6까지의 눈을 가진 3개의 주사위를 던져서 다음과 같은 규칙에 따라 상금을 받는 게임이 있다.
// 1. 같은 눈이 3개가 나오면 10,000원+(같은 눈)*1,000원의 상금을 받게 된다.
// 2. 같은 눈이 2개만 나오는 경우에는 1,000원+(같은 눈)*100원의 상금을 받게 된다.
// 3. 모두 다른 눈이 나오는 경우에는 (그 중 가장 큰 눈)*100원의 상금을 받게 된다.
// 예를 들어, 3개의 눈 3, 3, 6이 주어지면 상금은 1,000+3*100으로 계산되어 1,300원을 받게 된다. 또 3개의 눈이 2, 2, 2로 주어지면 10,000+2*1,000 으로 계산되어 12,000원을 받게 된다. 3개의 눈이 6, 2, 5로 주어지면 그중 가장 큰 값이 6이므로 6*100으로 계산되어 600원을 상금으로 받게 된다.
// 3개 주사위의 나온 눈이 주어질 때, 상금을 계산하는 프로그램을 작성 하시오.

// 입력
// 첫째 줄에 3개의 눈이 빈칸을 사이에 두고 각각 주어진다.

// 출력
// 첫째 줄에 게임의 상금을 출력 한다.

import Foundation

let dices: [Int] = readLine()!
    .components(separatedBy: " ")
    .compactMap { Int($0) }

let diceTuples: [(Int, Int)] = dices.map { ($0, 1) }
let diceDic: Dictionary<Int, Int> = Dictionary(diceTuples, uniquingKeysWith: +)
let sameDices: (Int, Int) = diceDic.max(by: { $0.value < $1.value })!
let (eye, count) = sameDices
let biggestDice: Int = diceDic.keys.reduce(Int.min) { max($0, $1) }

switch count {
case 3:
    print(10000 + eye * 1000)
case 2:
    print(1000 + eye * 100)
case 1:
    print(biggestDice * 100)
default: break
}
