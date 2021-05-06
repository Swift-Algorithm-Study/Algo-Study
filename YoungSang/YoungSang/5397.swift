
//
//  5397.swift
//  YoungSang

/*해결방법
하나가 아닌 두개의 스택을 사용한다.(stack1, stack2)
알파벳이 나왔을 경우 stack1에 쌓는다.
"-"가 나올경우 stack1에서 pop을 진행한다.
"<" 가 나올경우 stack1에서 pop을 진행하고 stack2에 쌓는다.
">" 가 나올경우 stack2에서 pop을 진행하고 stack1에 쌓는다.
마지막으로 stack2에 있는 문자를 반전시킨후 stack1 뒤에 붙혀준다.
*/

import Foundation


var input = Int(readLine()!)!
var result = ""

func stack()->String{
    var stack1:[String] = []
    var stack2:[String] = []
    var str = readLine()!
    for i in str{
        switch i{
        case "<":
            if !stack1.isEmpty{ //비어있지 않으면
                stack2.append(stack1.popLast()!)
            }else{continue} //비어있으면 계속하고
        case ">":
            if !stack2.isEmpty{
                stack1.append(stack2.popLast()!)
            }else{continue}
        case "-":
            if !stack1.isEmpty{
                stack1.popLast()!
            }else{continue}
        default:
            stack1.append("\(i)")
        }
        stack2.reverse()
    }
    
    return (stack1 + stack2).joined(separator:"")
    
}
for i in 0..<input{
    result = stack()
    print(result)
}

