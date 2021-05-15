//
//  Queue.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/05/10.
//

struct Queue<Element: Equatable>{
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
    
    mutating func pushFirst(_ element: Element) {
        dequeue.append(element)
    }
    
    mutating func pushLast(_ element: Element) {
        enqueue.append(element)
    }
    
    mutating func popFirst() -> Element? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
    
    mutating func popLast() -> Element? {
        var returnValue: Element?
        
        if enqueue.isEmpty {
            dequeue.reverse()
            returnValue = dequeue.popLast()
            dequeue.reverse()
        } else {
            returnValue = enqueue.popLast()
        }
        
        return returnValue
    }
    
    func contains(_ element: Element) -> Bool {
        return enqueue.contains(element) || dequeue.contains(element)
    }
}
