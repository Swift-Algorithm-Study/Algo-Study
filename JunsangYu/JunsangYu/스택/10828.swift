//
//  10828.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/03.
//

import Foundation

let n = Int(readLine()!) ?? 0
var stack: Array<Int> = []
for _ in 0..<n {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "push":
        stack.append(Int(command[1]) ?? 0)
    case "pop":
        if stack.isEmpty {
            print("-1")
            break
        }
        print(stack.removeLast())
    case "size":
        print(stack.count)
    case "empty":
        if stack.isEmpty {
            print("1")
        } else {
            print("0")
        }
    case "top":
        if stack.isEmpty {
            print("-1")
            break
        }
        print(stack[stack.endIndex-1])
    default:
        print("command is push, pop, size, empty, top")
    }
}
