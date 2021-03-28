//
//  main.swift
//  YoungSang
//다시 풀어보자! filter map split 완벽하게 이해하기!
//  Created by 유저 on 2021/03/28.
//

import Foundation

let num = Int(readLine()!)
let numX = Int(readLine()!)

let numArr = readLine()!.split(separator: " ").map{ Int($0)! }.filter { ($0) < numX!}


print((num)! , (numX)!)
print(numArr)
//for i in 0... num{
//    if numArr[i] < numX
//    print(numArr[i])
//}
