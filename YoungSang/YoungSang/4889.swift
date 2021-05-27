//
//  4889.swift
//  YoungSang
//
//  Created by 유저 on 2021/05/27.
//
//
//    { 를 만나면 stack에 넣는다.
//    stack이 비어있는데 '}'을 만나면 count를 1 올린다.
//    stack이 비어있지 않고 '}'을 만나면 stack에서 하나를 지운다.
//    stack의 길이 / 2를 count에 더하고, answer 배열에 추가한다.

import Foundation

var Arr:[Int] = []

while true{
    let input:String = readLine()!
    var stack:[Character] = []
    var count = 0

    if input.contains("-"){
        break
    }
    
    for n in input{
        if n == "{" {
            stack.append(n)
            
        }else if stack.isEmpty && n == "}"{
            count += 1
            
        }else if !stack.isEmpty && n == "}"{
            stack.removeLast()
        
        }
    }
    count += (stack.count)/2
    Arr.append(count)
}
for i in 0..<Arr.count{
    print("\(i+1). \(Arr[i])")
}
