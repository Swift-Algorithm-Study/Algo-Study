//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/03/30.
//

import Foundation

let arr = readLine()!.split(separator: " ").map { Int($0)! }
let X = arr[1]

print(readLine()!.split(separator: " ")
        .map { Int($0)! }
        .filter { $0 < X }
        .map { "\($0)" }
        .joined(separator: " ")
)
