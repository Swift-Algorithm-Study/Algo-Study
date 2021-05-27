//
//  10799.swift
//  BOJ
//
//  Created by 유저 on 2021/03/29.
//쇠막대기 문제

import Foundation


//( 만나면 스택에 push )만나면 스택에서 pop 하는데  바로 전 문자 체크해서 ( 판별
//괄호가 레이저면 스택 사이즈만큼 더해주고 파이프 끝이면 1만 더해주기
let input = Array(readLine()!)

var pieceCount = 0
var stack: [Character] = []

for i in 0..<n.count {
    if input[i] == "(" {
        stack.append(input[i])
    } else {
        stack.popLast()
        if input[i-1] == "(" {
            pieceCount += stack.count
        } else {
            pieceCount += 1
        }
    }
}
print(pieceCount)

