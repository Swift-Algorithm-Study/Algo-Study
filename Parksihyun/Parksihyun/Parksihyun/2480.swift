//
//  main.swift
//  Parksihyun
//
//  Created by 박시현 on 2021/03/31.
//

import Foundation

var line = readLine()!

var linearr = line.split(separator: " ").map{Int($0)}
var result = 0


if((linearr[0]! == linearr[1]!) && (linearr[1]! == linearr[2]!)) {
    result = 10000 + (linearr[0]! * 1000)
} else if(linearr[0]! == linearr[1]!) {
    result = 1000 + (linearr[0]! * 100)
} else if(linearr[0]! == linearr[2]!) {
    result = 1000 + (linearr[0]! * 100)
} else if(linearr[1]! == linearr[2]!) {
    result = 1000 + (linearr[1]! * 100)
} else {
    result = max(linearr[0]!, linearr[1]!, linearr[2]!) * 100
}

print(result)
