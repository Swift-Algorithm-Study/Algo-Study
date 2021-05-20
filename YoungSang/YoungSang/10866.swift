//
//  10866.swift
//  YoungSang
//
//  Created by 유저 on 2021/05/06.


import Foundation


public struct Deque<T: Equatable> {
    var array = [T] ()

    public var isEmpty: Bool {
        return array.isEmpty
    }

    public var size: Int {
        return array.count
    }

    public var front: T? {
        return array.first
    }

    public var back: T? {
        return array.last
    }

    public mutating func push_back(_ element: T) {
        array.append(element)
    }

    public mutating func push_front(_ element: T) {
        array.insert(element, at: 0)
    }

    public mutating func pop_front() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
        
    }

    public mutating func pop_back() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeLast()
        }
    }
}

var dequeue = Deque<String>()

var num = Int(readLine()!)!

for _ in 0..<num{
    let cmd = readLine()!.split(separator: " ").map() {String($0)}
    if cmd[0] == "push_front"{
        dequeue.push_front(cmd[1])
    }else if cmd[0] == "push_back"{
        dequeue.push_back(cmd[1])
    }else if cmd[0] == "pop_front"{
        print(dequeue.pop_front() ?? -1)
    }else if cmd[0] == "pop_back"{
        print(dequeue.pop_back() ?? -1)
    }else if cmd[0] == "size"{
        print(dequeue.size)
    }else if cmd[0] == "empty"{
        print(dequeue.isEmpty ? 1 : 0)
    }else if cmd[0] == "front"{
        print(dequeue.front!)
    }else if cmd[0] == "back"{
        print(dequeue.back!)
    }
}
