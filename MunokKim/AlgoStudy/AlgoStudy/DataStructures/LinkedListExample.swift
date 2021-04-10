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

print(testLinkedList.count) // 3
print(testLinkedList.remove(at: 2)!) // 8
print(testLinkedList.count) // 2
testLinkedList.append(Node(value: 2, next: nil))
print(testLinkedList.isEmpty) // false
print(testLinkedList.node(at: 1)!.value) // 4
testLinkedList.insert(Node(value: 9, next: nil), at: 1)
print(testLinkedList.last!.value) // 2

for i in 0..<testLinkedList.count {
    print(testLinkedList.node(at: i)!.value, terminator: " ")
} // 3 9 4 2

print(testLinkedList.removeLast()!) // 2
