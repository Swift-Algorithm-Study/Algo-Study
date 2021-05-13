//
//  main.swift
//  Parksihyun
//
//  Created by 박시현 on 2021/04/01.
//

import Foundation

let star = Int(readLine()!)!

for i in 1...star {
    for _ in 0..<i-1 {
        print(" ", terminator: "")
    }
    for _ in 0..<star-i+1 {
        print("*", terminator: "")
    }
    print("")
}
