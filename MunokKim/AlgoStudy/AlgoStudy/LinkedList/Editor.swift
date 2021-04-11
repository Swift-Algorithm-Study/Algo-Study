//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/04/10.
//

// https://www.acmicpc.net/problem/1406
// Baekjoon 1406번 에디터

//문제
//한 줄로 된 간단한 에디터를 구현하려고 한다. 이 편집기는 영어 소문자만을 기록할 수 있는 편집기로, 최대 600,000글자까지 입력할 수 있다.
//이 편집기에는 '커서'라는 것이 있는데, 커서는 문장의 맨 앞(첫 번째 문자의 왼쪽), 문장의 맨 뒤(마지막 문자의 오른쪽), 또는 문장 중간 임의의 곳(모든 연속된 두 문자 사이)에 위치할 수 있다. 즉 길이가 L인 문자열이 현재 편집기에 입력되어 있으면, 커서가 위치할 수 있는 곳은 L+1가지 경우가 있다.
//이 편집기가 지원하는 명령어는 다음과 같다.
//L    커서를 왼쪽으로 한 칸 옮김 (커서가 문장의 맨 앞이면 무시됨)
//D    커서를 오른쪽으로 한 칸 옮김 (커서가 문장의 맨 뒤이면 무시됨)
//B    커서 왼쪽에 있는 문자를 삭제함 (커서가 문장의 맨 앞이면 무시됨)
//삭제로 인해 커서는 한 칸 왼쪽으로 이동한 것처럼 나타나지만, 실제로 커서의 오른쪽에 있던 문자는 그대로임
//P $    $라는 문자를 커서 왼쪽에 추가함
//초기에 편집기에 입력되어 있는 문자열이 주어지고, 그 이후 입력한 명령어가 차례로 주어졌을 때, 모든 명령어를 수행하고 난 후 편집기에 입력되어 있는 문자열을 구하는 프로그램을 작성하시오. 단, 명령어가 수행되기 전에 커서는 문장의 맨 뒤에 위치하고 있다고 한다.
//
//입력
//첫째 줄에는 초기에 편집기에 입력되어 있는 문자열이 주어진다. 이 문자열은 길이가 N이고, 영어 소문자로만 이루어져 있으며, 길이는 100,000을 넘지 않는다. 둘째 줄에는 입력할 명령어의 개수를 나타내는 정수 M(1 ≤ M ≤ 500,000)이 주어진다. 셋째 줄부터 M개의 줄에 걸쳐 입력할 명령어가 순서대로 주어진다. 명령어는 위의 네 가지 중 하나의 형태로만 주어진다.
//dmih
//11
//B
//B
//P x
//L
//B
//B
//B
//P y
//D
//D
//P z
//
//출력
//첫째 줄에 모든 명령어를 수행하고 난 후 편집기에 입력되어 있는 문자열을 출력한다.
//yxz

import Foundation

let inputText: String = readLine()!
let commandCount: Int = Int(readLine()!)!

var leftText: String = inputText
var rightText: String = ""

for _ in 0..<commandCount {
    var command: String = readLine()!
    
    switch command.first! {
    case "L" where !leftText.isEmpty:
        let cursoringCharacter: Character = leftText.removeLast()
        rightText.append(cursoringCharacter)
    case "D" where !rightText.isEmpty:
        let cursoringCharacter: Character = rightText.removeLast()
        leftText.append(cursoringCharacter)
    case "B" where !leftText.isEmpty:
        leftText.removeLast()
    case "P":
        let newCharacter: Character = command.removeLast()
        leftText.append(newCharacter)
    default: break
    }
}

print(leftText + rightText.reversed())


//import Foundation
//
//let inputText: String = readLine()!
//let commandCount: Int = Int(readLine()!)!
//var commands = Array<String>()
//
//var leftStack: Stack<Character> = Stack()
//var rightStack: Stack<Character> = Stack()
//
//inputText.forEach { leftStack.push($0) }
//
//for _ in 0..<commandCount {
//    var command: String = readLine()!
//
//    switch command.first! {
//    case "L":
//        if let cursoringCharacter: Character = leftStack.pop() {
//            rightStack.push(cursoringCharacter)
//        }
//    case "D":
//        if let cursoringCharacter: Character = rightStack.pop() {
//            leftStack.push(cursoringCharacter)
//        }
//    case "B":
//        leftStack.pop()
//    case "P":
//        command.removeFirst(2)
//        let newCharacter: Character = Character(command)
//        leftStack.push(newCharacter)
//    default: break
//    }
//}
//
//print(leftStack.description + rightStack.description.reversed())


//import Foundation
//
//let inputText: String = readLine()!
//let commandCount: Int = Int(readLine()!)!
//var commands = Array<String>()
//
//let characterLinkedList: LinkedList<Character> = {
//    let linkedList: LinkedList<Character> = LinkedList(head: Node(value: inputText.first!, next: nil))
//
//    for (index, character) in inputText.enumerated() {
//        if index != 0 {
//            linkedList.append(Node(value: character, next: nil))
//        }
//    }
//
//    return linkedList
//}()
//
//var cursorIndex: Int = characterLinkedList.count
//
//for _ in 0..<commandCount {
//    var command: String = readLine()!
//
//    switch command.first! {
//    case "L" where cursorIndex > 0:
//        cursorIndex = cursorIndex - 1
//    case "D" where cursorIndex < characterLinkedList.count:
//        cursorIndex = cursorIndex + 1
//    case "B" where cursorIndex > 0:
//        characterLinkedList.remove(at: cursorIndex - 1)
//        cursorIndex = max(cursorIndex - 1, 0)
//    case "P":
//        command.removeFirst(2)
//        let newCharacter: Character = Character(command)
//        let newNode: Node<Character> = Node(value: newCharacter, next: nil)
//        characterLinkedList.insert(newNode, at: cursorIndex)
//        cursorIndex = cursorIndex + 1
//    default: break
//    }
//}
//
//var nodeForPrint: Node<Character>? = characterLinkedList.head
//
//while (nodeForPrint != nil) {
//    print(nodeForPrint!.value, terminator: "")
//    nodeForPrint = nodeForPrint!.next
//}
