//
//  10845.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/14.
//

import Foundation

var queue: Array<Int> = []
var cur = 0

for _ in 0..<Int(readLine()!)! {
    let command = readLine()!.split(separator: " ")

    switch command[0] {
    case "pop":
        if !queue.isEmpty {
            print(queue.removeFirst())
            cur -= 1
        } else {
            print("-1")
        }
    case "size":
        print(cur)
    case "empty":
        if !queue.isEmpty {
            print("0")
        }else {
            print("1")
        }
    case "front":
        if !queue.isEmpty {
            print(queue[0])
        } else {
            print("-1")
        }
    case "back":
        if !queue.isEmpty {
            print(queue[cur-1])
        } else {
            print("-1")
        }
    default:
        queue.append(Int(command[1])!)
        cur += 1
    }
}
