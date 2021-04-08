//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/04/08.
//

import Foundation

var dwarfs = [Int]()
for _ in 0..<9 {
    dwarfs.append(Int(readLine()!)!)
}

let dwarfsHeightSum = dwarfs.reduce(0, +)

for i in 0..<dwarfs.count-1 {
    for j in (i+1)..<dwarfs.count {
        if (dwarfsHeightSum - (dwarfs[i] + dwarfs[j])) == 100 {
            dwarfs[i] = 0
            dwarfs[j] = 0
            break;
        }
    }
}

dwarfs.sort()
for i in 2..<dwarfs.count {
    print(dwarfs[i])
}



