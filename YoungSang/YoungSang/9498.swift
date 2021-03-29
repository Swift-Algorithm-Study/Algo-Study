//
//  main.swift
//  YoungSang
//
//  Created by 유저 on 2021/03/29.
// c랑 너무차이가 나는데?

import Foundation

var score = Int(readLine()!)!

switch score
{
case (90..<101):
    print("A")
case (80..<90):
    print("B")
case (70..<80):
    print("C")
case (60..<70):
    print("D")
default:
    print("F")
}



