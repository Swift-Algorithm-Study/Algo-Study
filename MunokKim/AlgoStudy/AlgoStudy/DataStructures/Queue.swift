//
//  Queue.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/10.
//

struct Queue<Element>{
    var enqueue: [Element]
    var dequeue: [Element] = []
    
    var isEmpty: Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }
    
    var count: Int {
        return enqueue.count + dequeue.count
    }
    
    var first: Element? {
        if dequeue.isEmpty {
            return enqueue.first
        } else {
            return dequeue.last
        }
    }
    
    var last: Element? {
        if enqueue.isEmpty {
            return dequeue.first
        } else {
            return enqueue.last
        }
    }
    
    init(_ queue: [Element]) {
        self.enqueue = queue
    }
    
    mutating func push(_ element: Element) {
        enqueue.append(element)
    }
    
    mutating func pop() -> Element? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
}
