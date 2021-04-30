//
//  9498.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/04/30.
//

import Foundation

let input = readLine()!.split(separator: " ")
let score = Int(input[0]) ?? 0

if score >= 0 && score <= 100 {
    switch score{
    case 90...100:
        print("A")
    case 80...89:
        print("B")
    case 70...79:
        print("C")
    case 60...69:
        print("D")
    default:
        print("F")
    }
}
