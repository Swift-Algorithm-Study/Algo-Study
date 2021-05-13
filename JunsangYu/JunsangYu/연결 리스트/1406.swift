//
//  1406.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/02.
//

import Foundation

var stackL = readLine()!
var stackR = ""

for _ in 0..<Int(readLine()!)! {
    let command = readLine()!
    
    switch command {
    case "L":
        if !stackL.isEmpty {
            stackR.append(stackL.removeLast())
        }
    case "D":
        if !stackR.isEmpty {
            stackL.append(stackR.removeLast())
        }
    case "B":
        if !stackL.isEmpty {
            stackL.removeLast()
        }
    default:
        stackL.append(command.last!)
    
    }
}

print(stackL+stackR.reversed())

