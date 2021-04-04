//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/04/04.
//

import Foundation

// example

var testLinkedList = LinkedList<Int>(head: Node(value: 3, next: nil))
testLinkedList.append(Node(value: 4, next: nil))
testLinkedList.append(Node(value: 8, next: nil))

print(testLinkedList.count)
print(testLinkedList.remove(at: 2)!)
print(testLinkedList.count)
testLinkedList.append(Node(value: 2, next: nil))
print(testLinkedList.isEmpty)
print(testLinkedList.node(at: 1)!.value)
testLinkedList.insert(Node(value: 9, next: nil), at: 1)
print(testLinkedList.last!.value)

for i in 0..<testLinkedList.count {
    print(testLinkedList.node(at: i)!.value, terminator: " ")
}

print(testLinkedList.removeLast()!)
