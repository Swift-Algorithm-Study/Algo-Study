//
//  main.swift
//  Parksihyun
//
//  Created by 박시현 on 2021/03/30.
//

import Foundation

let N = readLine()!
let X = readLine()!

let Narr = N.split{ $0 == " "}.compactMap{Int ($0)}
let result = X.split { $0 == " " }.compactMap( {Int($0) } ).filter{$0 < Narr[1] }.reduce("") { "\($0)\($1) " }

print(result)

