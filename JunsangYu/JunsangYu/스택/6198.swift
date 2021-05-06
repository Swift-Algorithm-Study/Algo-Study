//
//  6198.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/04.
//

// monotone stack 기술 -> 스택의 원소들을 오름차순, 혹은 내림차순 상태로 유지하도록 하는것, 시간복잡도를 O(n)으로 줄여줌
// 다시 생각해보기 이해안됨

import Foundation

var n = Int(readLine()!) ?? 0
var inputStack: Array<Int> = []
var resultStack: Array<Int> = []

for _ in 0..<n {
    let val = Int(readLine()!) ?? 0
    resultStack.append(val)
}

var result = 0
for i in 0..<n {
    while !inputStack.isEmpty && inputStack[inputStack.endIndex-1] <= resultStack[i] {
        inputStack.removeLast()
    }
    result += inputStack.count
    inputStack.append(resultStack[i])
}
print(result)
