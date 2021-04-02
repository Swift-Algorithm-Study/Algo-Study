//
//  LeapYear.swift
//  TaeUk_Algo
//
//  Created by taeuk on 2021/03/27.
//

import Foundation

let input = Int(readLine()!)!

if input % 400 == 0 {
    print(1)
}else if input % 100 != 0 && input % 4 == 0{
    print(1)
}else{
    print(0)
}
