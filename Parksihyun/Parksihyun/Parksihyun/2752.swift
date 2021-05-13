//
//  main.swift
//  Parksihyun
//
//  Created by 박시현 on 2021/03/30.
//

import Foundation

let line = readLine()!


let linearr = line.split{ $0 == " "}.compactMap{Int($0)}
let result = linearr.sorted().reduce("") { "\($0)\($1) "}

print(result)
