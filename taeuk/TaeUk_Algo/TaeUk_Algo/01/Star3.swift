//
//  Star3.swift
//  TaeUk_Algo
//
//  Created by taeuk on 2021/03/27.
//

import Foundation

let input = Int(readLine()!)!

//star_3
for i in 1...input{
    for _ in 1...input-i+1{
        print("*", terminator: "")
    }
    print()
}
