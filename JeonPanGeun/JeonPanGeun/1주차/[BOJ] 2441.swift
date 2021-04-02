//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/04/01.
//

import Foundation

let n = Int(readLine()!)!

for i in 0..<n {
    for _ in (0..<i).reversed() {
        print(" ", terminator: "")
    }
    for j in 0..<(n-i) {
        print("*", terminator: "")
    }
    print("")
}
