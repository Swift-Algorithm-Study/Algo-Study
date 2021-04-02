//
//  Star4.swift
//  TaeUk_Algo
//
//  Created by taeuk on 2021/03/27.
//

import Foundation

let input = Int(readLine()!)!
// star_4
for i in 1...input{
    var result = ""
    for _ in input-i+1..<input{
        result += " "
    }
    for _ in 1...input-i+1{
        result += "*"
    }
    print(result)
}
