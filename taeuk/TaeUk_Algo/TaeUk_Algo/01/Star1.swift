//
//  Star1.swift
//  TaeUk_Algo
//
//  Created by taeuk on 2021/03/27.
//

import Foundation

let input = Int(readLine()!)!

for i in 1...input {
    for j in 1...i {
        print("*", terminator: "")
    }
    print()
}
