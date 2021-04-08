//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/04/08.
//

import Foundation

let N = Int(readLine()!)!
var arr = [String]()

for _ in 0..<N {
    arr.append(contentsOf: readLine()!.components(separatedBy: " "))
}

for i in stride(from: 0, to: arr.count, by: 2) {
    let temp1 = arr[i].map { String($0) }.sorted().joined()
    let temp2 = arr[i+1].map { String($0) }.sorted().joined()
    
    if temp1 == temp2 {
        print("Possible")
    } else {
        print("Impossible")
    }
}

