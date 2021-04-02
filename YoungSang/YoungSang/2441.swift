//  2441.swift
//*****
// ****
//  ***
//   **
//    *

import Foundation

var num = Int(readLine()!)!
for i in 1...num{
    num = num-1
    for _ in (1..<i){
//        if i == 0{
//            continue
//        }
        print(" ", terminator:"")
    }
    for _ in (0...num){
        print("*", terminator:"")
    }
    print("")
}
