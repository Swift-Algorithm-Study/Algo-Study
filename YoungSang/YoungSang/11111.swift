//
//  main.swift
//  YoungSang
//
//  Created by 유저 on 2021/04/24.
//s

import Foundation

var input = Int(readLine()!)!
var stack1:[String] = []
var stack2:[String] = []

for i in 0..<input{
    
    var str = readLine()!
    for i in str{
        if i == "<" {
            stack2.append("\(stack1.popLast())")
        }else if i == ">" {
            stack1.append("\(stack2.popLast())")
        }else if i == "-" {
            stack1.popLast()
        }
        else{
            stack2.append("\(i)")
        }
    }
//    stack2.reversed()
//    return result = stack2.reversed() + stack1
}


