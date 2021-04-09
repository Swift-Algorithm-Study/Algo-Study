//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/04/04.
//

import Foundation

// example

var intStack: Stack<Int> = Stack<Int>()
var stringStack: Stack<String> = Stack<String>()

intStack.push(3)
intStack.printSelf()
intStack.push(2)
intStack.printSelf()
intStack.pop()
intStack.printSelf()
stringStack.push("A")
stringStack.printSelf()
stringStack.push("B")
stringStack.printSelf()
stringStack.pop()
stringStack.printSelf()
