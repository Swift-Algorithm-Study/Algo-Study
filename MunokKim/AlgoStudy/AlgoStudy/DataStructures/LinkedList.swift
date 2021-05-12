//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/04/04.
//

import Foundation

// MARK: - Node

class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(value: T, next: Node<T>?) {
        self.value = value
        self.next = next
    }
}

// MARK: - LinkedList

class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    init(head: Node<T>?) {
        self.head = head
        self.tail = head
    }
}

// MARK: - Properties

extension LinkedList {
    var isEmpty: Bool {
        return head == nil
    }
    
    var first: Node<T>? {
        return head
    }
    
    var last: Node<T>? {
        guard var node = head
        else { return nil }
        
        while let next = node.next {
            node = next
        }
        
        return node
    }
    
    var count: Int {
        guard var node = head
        else { return 0 }
        
        var count = 1
        while let next = node.next {
            node = next
            count = count + 1
        }
        
        return count
    }
}

// MARK: - Methods

extension LinkedList {
    func node(at index: Int) -> Node<T>? {
        if index < 0 { return nil }
        
        if index == 0 {
            return head
        } else {
            var node = head!.next
            
            for _ in 1..<index {
                node = node?.next
                
                if node == nil { break }
            }
            
            return node
        }
    }
    
    func append(_ newNode: Node<T>) {
        if let tail = self.tail {
            tail.next = newNode
            self.tail = tail.next
        } else {
            self.head = newNode
            self.tail = newNode
        }
    }
    
    func insert(_ newNode: Node<T>, at index: Int) {
        if self.head == nil {
            self.head = newNode
            self.tail = newNode
            return
        }
        
        guard let frontNode = node(at: index - 1) else {
            let nextNode = head
            self.head = newNode
            newNode.next = nextNode
            return
        }
        guard let nextNode = frontNode.next else {
            frontNode.next = newNode
            self.tail = newNode
            return
        }
        
        newNode.next = nextNode
        frontNode.next = newNode
    }
    
    func removeAll() {
        head = nil
    }
    
    func remove(at index: Int) -> T? {
        guard let frontNode = node(at: index - 1) else {
            let removeNode = head
            self.head = removeNode?.next
            return removeNode?.value
        }
        guard let removeNode = frontNode.next
        else { return nil }
        guard let nextNode = removeNode.next else {
            frontNode.next = nil
            self.tail = frontNode
            return removeNode.value
        }
        
        frontNode.next = nextNode
        
        return removeNode.value
    }
    
    public func removeLast() -> T? {
        return remove(at: self.count - 1)
    }
}

// MARK: CustomStringConvertible

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next
        else { return "\(value)" }
        
        return "\(value) -> " + String(describing: next) + " "
    }
}
