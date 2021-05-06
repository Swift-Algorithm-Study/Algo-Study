//
//  main .swift
//  YoungSang
//
//  Created by 유저 on 2021/04/03.
//2309

import Foundation

var dwarfs = [Int]()
for _ in 0..<9 {
    dwarfs.append(Int(readLine()!)!)
}

let dwarfsHeightSum = dwarfs.reduce(0, +)

outloop: for i in 0..<dwarfs.count-1 {
    for j in (i+1)..<dwarfs.count {
        if (dwarfsHeightSum - (dwarfs[i] + dwarfs[j])) == 100 {
            dwarfs[i] = 0
            dwarfs[j] = 0
            break outloop;
        }
    }
}

dwarfs.sort()
for i in 2..<dwarfs.count {
    print(dwarfs[i])
}
