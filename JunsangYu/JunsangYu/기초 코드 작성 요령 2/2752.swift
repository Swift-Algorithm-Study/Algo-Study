//
//  2752.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/04/30.
//

// compactMap = flatMap, optional값 벗긴 배열로 변환
// joined(separator:) 메소드는 배열의 문자열들을 하나로 연결한 문자열을 반환, 또한 원소 사이에 분리 기호를 삽입할 수도 있음.

import Foundation

let nums = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
    .sorted()
    .map { "\($0)" }
    .joined(separator: " ")

print(nums)
