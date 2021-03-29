//
//  main.swift
//  YoungSang
//다시 풀어보자! filter map split 완벽하게 이해하기!
//  Created by 유저 on 2021/03/28.
//

import Foundation


var num = readLine()!.split(separator: " ").map { Int($0)! }
var numX = num[1]
var numArr = readLine()!.split(separator: " ")
var numArr2 = numArr.map{ Int($0)! }.filter{($0) < numX}

//print(numArr2)
for i in 0...(numArr2.count)-1{
    print(numArr2[i], terminator:" ")
}

