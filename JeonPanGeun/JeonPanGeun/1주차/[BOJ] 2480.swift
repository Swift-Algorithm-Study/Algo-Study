//
//  main.swift
//  JeonPanGeun
//
//  Created by 전판근 on 2021/03/30.
//

import Foundation

var dice = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

if dice[0] == dice[1] && dice[1] == dice[2] {
    print("\(10000 + dice[0] * 1000)")
} else if dice[0] == dice[1] && dice[1] != dice[2] {
    print("\(1000 + dice[0] * 100)")
} else if dice[0] == dice[2] && dice[0] != dice[1] {
    print("\(1000 + dice[0] * 100)")
} else if dice[1] == dice[2] && dice[0] != dice[1] {
    print("\(1000 + dice[1] * 100)")
} else {
    print("\(dice[2] * 100)")
}
