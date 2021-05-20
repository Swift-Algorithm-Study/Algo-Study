//
//  main.swift
//  덱
//
//  Created by 민성홍 on 2021/05/20.
//

import Foundation

public struct Deque<T> {
    private var storage: [T] = []
    
    public init() {}
    
    public init(_ elements: [T]){
        storage = elements
    }
    
    public mutating func frontEnqueue(_ element: T) -> Bool{
        storage.insert(element, at: 0)
        return true
    }
    
    public mutating func backEnqueue(_ element: T) -> Bool{
        storage.append(element)
        return true
    }
    
    public mutating func frontDequeue() -> T? {
        return isEmpty ? nil : storage.removeFirst()
    }
    
    public mutating func backDequeue() -> T? {
        return isEmpty ? nil : storage.remove(at: storage.count - 1)
    }
    
    public var isEmpty: Bool {
        return storage.isEmpty
    }
    
    public var frontPeek: T? {
        return storage.first
    }
    
    public var backPeek: T? {
        return storage.last
    }
    
    public var count: Int {
        var elementCount: Int = 0
        for element in storage {
            if element != nil {
                elementCount += 1
            }
        }
        return elementCount
    }
}

var mydeque = Deque<Any>()
var n = Int(readLine()!)!

for _ in 0..<n {
    let comm = readLine()!.split(separator: " ")
    
    if comm[0] == "push_front" {
        mydeque.frontEnqueue(comm[1])
    } else if comm[0] == "push_back" {
        mydeque.backEnqueue(comm[1])
    } else if comm[0] == "pop_front" {
        if mydeque.isEmpty == true {
            print(-1)
        } else {
            print("\(mydeque.frontPeek!)")
            mydeque.frontDequeue()
        }
    } else if comm[0] == "pop_back" {
        if mydeque.isEmpty == true {
            print(-1)
        } else {
            print("\(mydeque.backPeek!)")
            mydeque.backDequeue()
        }
    } else if comm[0] == "size" {
        print("\(mydeque.count)")
    } else if comm[0] == "empty" {
        if mydeque.isEmpty == true {
            print(1)
        } else {
            print(0)
        }
    } else if comm[0] == "front" {
        if mydeque.isEmpty == true {
            print(-1)
        } else {
            print("\(mydeque.frontPeek!)")
        }
    } else if comm[0] == "back" {
        if mydeque.isEmpty == true {
            print(-1)
        } else {
            print("\(mydeque.backPeek!)")
        }
    }
}
