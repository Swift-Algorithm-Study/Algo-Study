//
//  main.swift
//3273.swift

import Foundation
var num = Int(readLine()!)
var numArr = readLine()!.split(separator: " ").map{Int($0)!}
var numX = Int(readLine()!)
var numCount:Int = 0

for i in 0..<numArr.count{
    for j in i..<numArr.count{
        if i==j{
            continue
        }else if (numX == numArr[i] + numArr[j]) {
            numCount += 1
        }
    }
}

print(numCount)


