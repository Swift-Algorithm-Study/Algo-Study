//
//  NumberLessThanX.swift
//  TaeUk_Algo
//
//  Created by taeuk on 2021/03/27.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let secondInput = readLine()!.split(separator: " ").map{Int($0)!}


for i in secondInput {
    if i < input[1] {
        print(i, terminator: " ")
    }
}
