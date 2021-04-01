//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/04/01.
//

import Foundation

let n = Int(readLine()!)!

for i in (0..<n).reversed() {
    for _ in (0...i) {
        print("*", terminator: "")
    }
    print("")
}
