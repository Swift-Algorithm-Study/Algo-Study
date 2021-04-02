//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/03/28.
//

// https://www.acmicpc.net/problem/2439
// Baekjoon 2439번 별 찍기 - 2

// 문제
// 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
// 하지만, 오른쪽을 기준으로 정렬한 별(예제 참고)을 출력하시오.

// 입력
// 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.

// 출력
// 첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.

let totalLine: Int = Int(readLine()!)!

for lineNumber in 1..<totalLine+1 {
    let spaces: Int = totalLine - lineNumber
    var lineString: String = ""
    
    for _ in 0..<spaces {
        lineString = lineString + " "
    }
    
    for _ in 0..<lineNumber {
        lineString = lineString + "*"
    }
    print(lineString)
}
