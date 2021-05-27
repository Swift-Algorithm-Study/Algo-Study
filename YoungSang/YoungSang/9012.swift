//
//  9012.swift
//  YoungSang
//
//  Created by 유저 on 2021/05/27.
//


import Foundation



var t = Int(readLine()!)!

for _ in 0..<t{
    let input = readLine()!
    var stack:[Character] = []
    var flag:Bool = true
    for i in input{
        if i == "("{
            stack.append(i)
        }else if i == ")"{
            if stack.isEmpty{
                flag = false
            }else {
                if stack.popLast() != "("{
                    flag = false
                }
            }
        }
    }
    if stack.isEmpty && flag {
        print("YES")
    }else{
        print("NO")
    }
}
