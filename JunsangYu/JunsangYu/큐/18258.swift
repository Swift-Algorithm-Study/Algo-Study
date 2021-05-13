//
//  18258.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/07.
//

// 시간초과...ㅜㅜㅜㅜ O(n)도 안먹히나

import Foundation

var queue: Array<Int> = []
var cur = 0

for _ in 0..<Int(readLine()!)! {
    let command = readLine()!
    
    switch command[0] {
    case "pop":
        if !queue.isEmpty {
            print(queue.removeFirst())
            cur -= 1
        } else {
            print("-1")
        }
    case "size":
        print(cur)
    case "empty":
        if !queue.isEmpty {
            print("0")
        }else {
            print("1")
        }
    case "front":
        if !queue.isEmpty {
            print(queue[0])
        } else {
            print("-1")
        }
    case "back":
        if !queue.isEmpty {
            print(queue[cur-1])
        } else {
            print("-1")
        }
    default:
        queue.append(Int(command[1])!)
        cur += 1
    }
}



// 큐로 푼 경우 - 시간초과
//import Foundation
//
//class Queue{
//    var enqueue: [Int]
//    var dequeue: [Int] = []
//
//    var isEmpty: Bool{
//        return enqueue.isEmpty && dequeue.isEmpty
//    }
//    var count: Int{
//        return enqueue.count + dequeue.count
//    }
//
//    init(_ queue:[Int]){
//        self.enqueue = queue
//    }
//
//    func push(_ n: Int){
//        enqueue.append(n)
//    }
//
//    func pop(){
//        if dequeue.isEmpty{
//            dequeue = enqueue.reversed()
//            enqueue.removeAll()
//        }
//        print(dequeue.popLast()!)
//    }
//
//    func front() {
//        if dequeue.isEmpty {
//            print(enqueue.first!)
//        } else {
//            print(dequeue.last!)
//        }
//    }
//    func back(){
//        if dequeue.isEmpty {
//            print(enqueue.last!)
//        } else {
//            print(dequeue.first!)
//        }
//    }
//
//}
//
//var queue: Queue = Queue([Int]())
//
//for _ in 0..<Int(readLine()!)! {
//    let command = readLine()!.split(separator: " ")
//
//    switch command[0] {
//    case "pop":
//        if queue.isEmpty {
//            print("-1")
//        } else {
//            queue.pop()
//        }
//    case "size":
//        print(queue.count)
//    case "empty":
//        if queue.isEmpty {
//            print("1")
//        }else {
//            print("0")
//        }
//    case "front":
//        if queue.isEmpty {
//            print("-1")
//        } else {
//            queue.front()
//        }
//    case "back":
//        if queue.isEmpty {
//            print("-1")
//        } else {
//            queue.back()
//        }
//    default:
//        queue.push(Int(command[1])!)
//    }
//}
//
