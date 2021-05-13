//
//  main.swift
//  Parksihyun
//
//  Created by 박시현 on 2021/03/30.
//

import Foundation

let line = readLine()!
let lineArr = line.split(separator: " ")

let a = Int(lineArr[0]) ?? 0
let b = Int(lineArr[1]) ?? 0

print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%b)
