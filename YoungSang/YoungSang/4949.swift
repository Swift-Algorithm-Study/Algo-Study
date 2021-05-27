////
////  4949.swift
////  YoungSang
////
////  Created by 유저 on 2021/05/27.
////

import Foundation

while true{
    let input:String = readLine()!
    var stack:[Character] = []
    var flag:Bool = true

    if input == "."{
        break
    }
    for n in input{
        if n == "(" || n == "["{
            stack.append(n)
        }else if n == ")"{
            if stack.popLast() != "("{
                stack.removeLast()
            }else{
                flag == false
                break
            }
        }else if n == "]"{
            if stack.popLast() != "("{
                stack.removeLast()
            }else{
                flag == false
                break
            }
        }
    }
    if stack.isEmpty && flag {
        print("YES")
    }else{
        print("NO")
    }
}



