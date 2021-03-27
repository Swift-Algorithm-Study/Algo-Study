//
//  File.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/03/27.
//

//  https://www.acmicpc.net/problem/10869
//  Baekjoon 10869번 사칙연산

//  문제
//  두 자연수 A와 B가 주어진다. 이때, A+B, A-B, A*B, A/B(몫), A%B(나머지)를 출력하는 프로그램을 작성하시오.

//  입력
//  두 자연수 A와 B가 주어진다. (1 ≤ A, B ≤ 10,000)

//  출력
//  첫째 줄에 A+B, 둘째 줄에 A-B, 셋째 줄에 A*B, 넷째 줄에 A/B, 다섯째 줄에 A%B를 출력한다.

import Foundation

if let input: String = readLine() {
    let separatedInput: [String] = input.components(separatedBy: " ")
    
    if
        let intA: Int = Int(separatedInput[0]),
        let intB: Int = Int(separatedInput[1]),
        1 <= intA, intB <= 10000 {
        
        print(intA + intB)
        print(intA - intB)
        print(intA * intB)
        print(intA / intB)
        print(intA % intB)
    }
}
