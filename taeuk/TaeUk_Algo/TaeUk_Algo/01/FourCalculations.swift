//
//  FourCalculations.swift
//  TaeUk_Algo
//
//  Created by taeuk on 2021/03/27.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let first = input[0]
let second = input[1]

print(first + second)
print(first - second)
print(first * second)
print(first / second)
print(first % second)
