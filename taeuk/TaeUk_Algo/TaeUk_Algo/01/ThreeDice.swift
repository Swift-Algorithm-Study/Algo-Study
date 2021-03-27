//
//  ThreeDice.swift
//  TaeUk_Algo
//
//  Created by taeuk on 2021/03/27.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

if input[0] == input[1] && input[0] == input[2] {
    print((input[0]*1000)+10000)
}else if input[0] == input[1] || input[0] == input[2] || input[1] == input[2] {
    if input[0] == input[1] || input[0] == input[2] {
        print((input[0]*100)+1000)
    }else if input[1] == input[2] {
        print((input[1]*100)+1000)
    }
}else{
    let maxNumber = input.max()!
    print(maxNumber*100)
}
