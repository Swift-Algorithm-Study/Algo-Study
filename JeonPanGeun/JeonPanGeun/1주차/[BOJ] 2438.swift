//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/03/30.
//

import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}
