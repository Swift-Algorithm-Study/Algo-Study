//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/04/04.
//

import Foundation

protocol SelfPrintable {
    func printSelf()
}

extension SelfPrintable where Self: Container {
    func printSelf() {
        print(items)
    }
}

// MARK: - Container

protocol Container: SelfPrintable {
    // 연관 타입을 활용하여 제네릭에 더욱 유연하게 대응할 수 있도록 정의
    associatedtype ItemType
    
    var items: [ItemType] { get set }
    var count: Int { get }
    
    mutating func append(item: ItemType)
    
    subscript(i: Int) -> ItemType { get }
}

extension Container {
    mutating func append(item: ItemType) {
        items.append(item)
    }
    
    var count: Int {
        return items.count
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    subscript(i: Int) -> ItemType {
        return items[i]
    }
}

extension Container where Self.ItemType: CustomStringConvertible {
    var description: String {
        return items.reduce("") { $0 + String(describing: $1) }
    }
}

// MARK: - Popable

// Container 프로토콜을 상속받아 추가로 특정 목적을 갖는 컨테이너 타입에 필요한 기능을 요구하지만,
// 초기구현을 통해 미리 공통 기능을 구현했기에 실제 프로토콜을 따르는 타입은 추가 구현이 필요 없습니다.
protocol Popable: Container {
    mutating func pop() -> ItemType?
    mutating func push(_ item: ItemType)
}

extension Popable {
    mutating func pop() -> ItemType? {
        guard !isEmpty else { return nil }
        return items.removeLast()
    }
    
    mutating func push(_ item: ItemType) {
        self.append(item: item)
    }
}

// MARK: - Insertable

protocol Insertable: Container {
    mutating func delete() -> ItemType?
    mutating func insert(_ item: ItemType)
}

extension Insertable {
    mutating func delete() -> ItemType? {
        return items.removeFirst()
    }
    
    mutating func insert(_ item: ItemType) {
        self.append(item: item)
    }
}

// MARK: - Stack

// Stack과 Queue 구조체는 익스텐션을 통한 초기구현으로 프로토콜을 채택.
// 구조체 내부에서는 프로토콜 준수를 위해 주가 구현이 필요없습니다.
struct Stack<Element>: Popable {
    var items: [Element] = [Element]()
}

// MARK: - Queue

//struct Queue<Element>: Insertable {
//    var items: [Element] = [Element]()
//}
