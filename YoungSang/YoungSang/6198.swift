//6198.swift 


var inputN = Int(readLine()!)!
var countArr = [Int](repeating: 0, count: inputN)
var stack1:[Int] = []
var stack2:[Int] = []
var count = 0
for i in 0..<inputN{
    var num = Int(readLine()!)!
    stack1.append(num)
}

for i in 0..<inputN{
    while((stack2.count != 0) && (stack2.last! <= stack1[i])){
        stack2.popLast()
    }
    stack2.append(stack1[i])
    count += stack2.count-1
}

print(count)
