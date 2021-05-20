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
    
    public mutating func frontDequeue() -> T? {
        return isEmpty ? nil : storage.removeFirst()
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

var comm = readLine()
var n = Int(readLine()!)!
var myDeque = Deque<Any>()


