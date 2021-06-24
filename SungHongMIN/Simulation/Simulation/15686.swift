//
//  main.swift
//  Simulation
//
//  Created by 민성홍 on 2021/06/24.
//

import Foundation

let array = readLine()!.split(separator: " ").map{Int(String($0))!}

let N = array[0]
let M = array[1]
var graph = [[Character]]()
var order = [Int]()
var Answer = Int.max

(0..<N).forEach { _ in
    let str = Array(readLine()!)
    var row = [Character]()
    var sdx = 0
    while sdx < str.count {
        row.append(str[sdx])
        sdx += 2
    }
    graph.append(row)
}

var homeList = [(Int, Int)]()
var chickenList = [(Int, Int)]()
for idx in G.indices {
    for jdx in G[idx].indices {
        if G[idx][jdx] == "1" {
            homeList.append((idx,jdx))
        } else if G[idx][jdx] == "2" {
            chickenList.append((idx,jdx))
        }
    }
}

func getChicken() -> Int {
    var result = 0
    homeList.forEach { hPos in
        var tDist = Int.max
        order.forEach{ idx in
            let oPos = chickenList[idx]
            let diffX = hPos.0 - oPos.0 > 0 ? hPos.0 - oPos.0 : oPos.0 - hPos.0
            let diffY = hPos.1 - oPos.1 > 0 ? hPos.1 - oPos.1 : oPos.1 - hPos.1
            let ttDist = diffX + diffY
            tDist = tDist > ttDist ? ttDist : tDist
        }
        result += tDist
    }
    return result
}

func DFS(_ n: Int) {
    if order.count + M - n < n { return }
    if n == M {
        Answer = min(Answer, getChicken())
        return
    }

    var idx = order.isEmpty ? 0 : order.last! + 1
    while idx < chickenList.count {
        order.append(idx)
        DFS(n + 1)
        order.removeLast()
        idx += 1
    }
}

DFS(0)
print(Answer)

