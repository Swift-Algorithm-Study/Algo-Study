//
//  main.swift
//  큐
//
//  Created by 민성홍 on 2021/05/13.
//

import Foundation

struct Queue<T> {
    private var queue: [T?] = []
    private var head: Int = 0

    public var count: Int {
        var elementCount: Int = 0
        for element in queue {
            if element != nil {
                elementCount += 1
            }
        }
        return elementCount
    }
    
    public var isEmpty: Bool {
        
        if queue.last! == nil {
            return true
        } else {
            return false
        }
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head <= queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        if head > 50 {
            queue.removeFirst(head)
            head = 0
        }
        return element
    }
    
    subscript(index: Int) -> T {
        get {
            queue[index]!
        }
    }
    
    public func printLast() -> T? {
        return queue.last!
    }
    
    public func getHead() -> Int {
        return head
    }
}

var myQueue = Queue<Any>()

var n = Int(readLine()!)!

for _ in 0..<n {
    let comm = readLine()!.split(separator: " ")
    
    if comm[0] == "push" {
        myQueue.enqueue((comm[1]))
    } else if comm[0] == "pop" {
        if myQueue.isEmpty == true {
            print(-1)
        } else {
            print("\(myQueue.dequeue()!)")
        }
    } else if comm[0] == "size" {
        print("\(myQueue.count)")
    } else if comm[0] == "empty" {
        if myQueue.isEmpty == true {
            print(1)
        } else {
            print(0)
        }
    } else if comm[0] == "front" {
        if myQueue.isEmpty == true {
            print(-1)
        } else {
            print("\(myQueue[myQueue.getHead()])")
        }
    } else if comm[0] == "back" {
        if myQueue.isEmpty == true {
            print(-1)
        } else {
            print("\(String(describing: myQueue.printLast()!))")
        }
    }
}
