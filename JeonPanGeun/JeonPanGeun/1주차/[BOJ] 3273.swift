//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/04/08.
//

import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
let x = Int(readLine()!)!

var first: Int = 0
var last: Int = arr.count-1
var result = 0

print(arr)

while first < last {
    let sum = arr[first] + arr[last]
    if (sum == x) {
        result += 1
        first += 1
    } else if (sum < x) {
        first += 1
    } else if (sum > x) {
        last -= 1
    }
}

print(result)
