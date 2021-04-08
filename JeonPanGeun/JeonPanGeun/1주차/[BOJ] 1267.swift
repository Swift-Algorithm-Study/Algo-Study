//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/04/08.
//

// 백준 1267 핸드폰 요금

// y 영식 요금제 30초마다 10원
// m 민식 요금제 60초마다 15원

import Foundation

let N: Int = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").compactMap{ Int($0) }

var y: Int = 0
var m: Int = 0

for i in arr {
    y += i / 30 * 10 + 10
    m += i / 60 * 15 + 15
}

if y == m {
    print("Y M \(y)")
}
else if y < m {
    print("Y \(y)")
} else {
    print("M \(m)")
}
