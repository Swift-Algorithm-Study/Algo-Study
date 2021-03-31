//
//  main.swift
//  Parksihyun
//
//  Created by 박시현 on 2021/03/30.
//

import Foundation

let line = readLine()!
let score = Int(line)

if(score! >= 90 && score! <= 100) {
    print("A")
} else if (score! >= 80 && score! <= 89) {
    print("B")
} else if (score! >= 70 && score! <= 79) {
    print("C")
} else if (score! >= 60 && score! <= 69) {
    print("D")
} else {
    print("F")
}
