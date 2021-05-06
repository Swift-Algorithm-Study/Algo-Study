//
//  5397.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/02.
//

import Foundation

let n = Int(readLine()!) ?? 0

for _ in 0..<n {
    let str = readLine()!
    var stackL = ""
    var stackR = ""
    
    for char in str {
        if char == "<" {
            if stackL != "" {
                let val = stackL.removeLast()
                stackR.append(val)
            }
        } else if char == ">" {
            if stackR != "" {
                let val = stackR.removeLast()
                stackL.append(val)
            }
        } else if char == "-" {
            if stackL != "" {
                stackL.removeLast()
            }
        } else {
            stackL.append(char)
        }
    }
    
    print(stackL + stackR.reversed())
}
