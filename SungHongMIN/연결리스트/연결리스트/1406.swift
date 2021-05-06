//
//  main.swift
//  연결리스트
//
//  Created by 민성홍 on 2021/05/06.
//
import Foundation

if let str = readLine() {
    let n = readLine().map{Int($0)!}!

    var stackL = str
    var stackR = ""
    
    for _ in 0..<n {
        var order = readLine()
        switch order {
        case "L":
            if stackL != "" {
                let c = stackL.removeLast()
                stackR.append(c)
            }
        case "D":
            if stackR != "" {
                let c = stackR.removeLast()
                stackL.append(c)
            }
        case "B":
            if stackL != "" {
                stackL.removeLast()
            }
        default:
            let p = order!.removeLast()
            stackL.append(p)
        }
    }
    print(stackL + stackR.reversed())
}
