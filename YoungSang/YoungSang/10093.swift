//
//  main.swift
//  YoungSang
//
//  Created by 유저 on 2021/04/09.
//
import Foundation

var num = readLine()!

var numArr = num.split(separator: " ").map{ Int($0)!}
numArr.sort()
var result:[Int] = []
if numArr[0] == numArr[1]{
}else{
    for i in 1...(numArr[1]-numArr[0]-1){
        result.append(numArr[0]+i)
    }
}

print(result.count)
for i in 0..<result.count{
    print(result[i], terminator:" ")
}
