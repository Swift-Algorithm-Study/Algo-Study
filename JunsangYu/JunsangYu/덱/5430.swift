//
//  5430.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/16.
//

// 시간초과

import Foundation

outer: for _ in 0..<Int(readLine()!)! { // 테스트케이스 배열
    var arr = [Int]()
    var rCount = 0
    let cmd = readLine()!
    let _ = Int(readLine()!)!
    let arrString = readLine()!.trimmingCharacters(in: ["[","]"]).components(separatedBy: ",")
    arr = arrString.compactMap { str in
        Int(str)
    }
    
    for char in cmd {
        switch char {
        case "R":
            rCount += 1
        case "D":
            if arr.isEmpty {
                print("error")
                continue outer
            }
            
            if rCount % 2 == 1 {
                arr.removeLast()
            } else {
                arr.removeFirst()
            }
           
        default:
            print("wrong command!")
        }
    }
    if rCount % 2 == 1 {
        print(Array(arr.reversed()))
    } else {
        print(arr)
    }
   
}
