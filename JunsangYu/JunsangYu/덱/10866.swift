//
//  10866.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/15.
//

import Foundation

struct Deque<T> {
    var left: [T]
    var right: [T] = []
    
    var count: Int {
        return right.count + left.count
    }
    var isEmpty: Bool {
        return right.isEmpty && left.isEmpty
    }
    var first: T? { // 디큐가 비었으면 인큐의 첫번째요소를 리턴
        if left.isEmpty {
            return right.first
        }
        return left.last // 안비어있으면 디큐의 마지막요소를 리턴
    }
    
    var last: T? { // 인큐가 비었으면 디큐의 첫번째요소를 리턴
        if right.isEmpty {
            return left.first
        }
        return right.last // 안비어있으면 인큐의 마지막요소를 리턴
    }

    init(_ queue: [T]) {
        left = queue
    }
    
    mutating func pushFirst(_ n: T) { // 디큐에 요소를 넣음
        left.append(n)
    }
    mutating func pushLast(_ n: T) { // 인큐에 요소를 넣음
        right.append(n)
    }
    mutating func popFirst() -> T? { // 디큐가 비었으면 디큐에 인큐 뒤집은 값을 넣고 인큐값을 지운후 디큐의 라스트값을 제거
        if left.isEmpty {
            left = right.reversed()
            right.removeAll()
        }
        return left.popLast() // 비어있지않으면 그냥 디큐의 라스트값을 제거
        
    }
    mutating func popLast() -> T? { // 인큐가 비어있으면 디큐를 뒤집고 디큐의 라스트값을 가져온 후 다시 뒤집음
        var returnValue: T?
        if right.isEmpty {
            left.reverse()
            returnValue = left.popLast()
            left.reverse()
        } else { // 인큐가 비어있지 않으면 인큐의 마지막값을 제거할 값으로 리턴
            returnValue = right.popLast()
        }
        return returnValue
    }

}
var deque = Deque([String]())

for _ in 0..<Int(readLine()!)! {
    let cmd = readLine()!.split(separator: " ")

    switch cmd[0] {
    case "push_front":
        deque.pushFirst(String(cmd.last!))
    case "push_back":
        deque.pushLast(String(cmd.last!))
    case "pop_front":
        if let popValue = deque.popFirst() {
            print(popValue)
        } else {
            print("-1")
        }
    case "pop_back":
        if let popValue = deque.popLast() {
            print(popValue)
        } else {
            print("-1")
        }
    case "size":
        print(deque.count)
    case "empty":
        print(deque.isEmpty ? "1" : "0")
    case "front":
        if let front = deque.first {
            print(front)
        } else {
            print("-1")
        }
    case "back":
        if let back = deque.last {
            print(back)
        } else {
            print("-1")
        }
    default:
        print("cmd is wrong")
    }
    
    print(deque.left.reversed() + deque.right)
}
