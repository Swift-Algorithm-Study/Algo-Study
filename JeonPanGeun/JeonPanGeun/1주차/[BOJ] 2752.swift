//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/03/30.
//

import Foundation

print(readLine()!
    .split(separator: " ")
    .map { Int($0)! }
    .sorted()
    .map { "\($0)" }
    .joined(separator: " ")
)


