//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/03/30.
//

import Foundation

let year = Int(readLine()!)!

if (year % 4 == 0 && (year % 100 != 0 ||  year % 400 == 0)) {
    print("1")
} else {
    print("0")
}
