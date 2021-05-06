//
//  1406.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/02.
//

// 시간초과 !!!!!!!!!!!!!!!!!!!!!!!!!!!
import Foundation

let str = readLine()!
let n = Int(readLine()!) ?? 0

var stackL = str
var stackR = ""

for _ in 0..<n {
    var command = readLine()!
    
    switch command {
    case "L":
        if stackL != "" {
            let val = stackL.removeLast()
            stackR.append(val)
        }
    case "D":
        if stackR != "" {
            let val = stackR.removeLast()
            stackL.append(val)
        }
    case "B":
        if stackL != "" {
            stackL.removeLast()
        }
    default:
        let val = command.removeLast()
        stackL.append(val)
    
    }
}

print(stackL+stackR.reversed())
