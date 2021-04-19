//
//  11328.swift
//  YoungSang
//
//  Created by 유저 on 2021/04/09.
//11328

import Foundation

var nums = Int(readLine()!)!
for i in 0..<nums{
    var numArr = readLine()!.split(separator: " ")
    var arr1 = numArr[0].sorted()
    var arr2 = numArr[1].sorted()
    
    
    if arr1.count != arr2.count{
        print("Impossible")
        continue
    }
    for i in 0..<arr1.count{
        if arr1[i] != arr2[i]{
        print("Impossible")
            break
        }else{
            print("possible")
            break
        }
    }
}


