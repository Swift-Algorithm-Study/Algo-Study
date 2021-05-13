//
//  2164.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/07.
//

import Foundation

// 처음 푼거 - 시간초과
//let n = Int(readLine()!)!
//
//var cards = Array(1...n)
//var count = n
//
//while count != 1 {
//    cards.removeFirst()
//    cards.append(cards.removeFirst())
//    count -= 1
//}
//
//print(cards[0])


// 인터넷에서 푼거 - 훨씬빠름 왜지...
class Queue{
    var enqueue: [Int]
    var dequeue: [Int] = []

    var isEmpty: Bool{
        return enqueue.isEmpty && dequeue.isEmpty
    }
    var count: Int{
        return enqueue.count + dequeue.count
    }

    init(_ queue:[Int]){
        self.enqueue = queue
    }

    func push(_ n: Int){
        enqueue.append(n)
    }

    func pop() -> Int?{
        if dequeue.isEmpty{
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }

}

let n = Int(readLine()!)!
var temp = [Int]()
for card in 1...n{
    temp.append(card)
}
var queue: Queue = Queue(temp)
while queue.count != 1{
    let _ = queue.pop()
    if let card = queue.pop(){
        queue.push(card)
    }
}
print(queue.pop()!)
