//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/06/28.
//

// https://www.acmicpc.net/problem/10814
// Baekjoon 10814번 나이순 정렬

let numberOfMembers: Int = Int(readLine()!)!
var members: [(Int, String)] = []

for _ in 0..<numberOfMembers {
    let input: [String] = readLine()!
        .split(separator: " ")
        .map { String($0) }
    let ages: Int = Int(input[0])!
    let name: String = input[1]
    let member: (Int, String) = (ages, name)
    members.append(member)
}

for member in members.sorted(by: { $0.0 < $1.0 }) {
    print("\(member.0) \(member.1)")
}
