//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/03/27.
//

// https://www.acmicpc.net/problem/9498
// Baekjoon 9498번 시험 성적

// 문제
// 시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.

// 입력
// 첫째 줄에 시험 점수가 주어진다. 시험 점수는 0보다 크거나 같고, 100보다 작거나 같은 정수이다.

// 출력
// 시험 성적을 출력한다.

import Foundation

if
    let input: String = readLine(),
    let score: Int = Int(input),
    score >= 0, score <= 100 {
    
    let output: String = {
        switch score {
        case 90...100: return "A"
        case 80...89: return "B"
        case 70...79: return "C"
        case 60...69: return "D"
        default: return "F"
        }
    }()
    
    print(output)
}
