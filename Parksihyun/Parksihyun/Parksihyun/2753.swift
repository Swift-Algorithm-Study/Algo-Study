//
//  main.swift
//  Parksihyun
//
//  Created by 박시현 on 2021/03/31.
//

import Foundation

let line = readLine()!
let year = Int(line)

if(year! % 4 == 0 && (year! % 100 != 0 || year! % 400 == 0)) {
    print("1")
} else {
    print("0")
}
