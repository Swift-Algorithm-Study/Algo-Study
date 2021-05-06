import Foundation

var num = Int(readLine()!)!
var stack:[Int] = []

for _ in 0..<num
{
    let cmd = readLine()!.components(separatedBy: " ")
    if cmd.first! == "push"{
        stack.append(Int(cmd[1])!)
    }else if cmd.first! == "pop"{
        if stack.isEmpty{
            print("-1")
        }else{
            print(stack.last!)
            stack.removeLast()
        }
    }else if cmd.first! == "size"{
        print(stack.count)
    }else if cmd.first! == "empty"{
        if stack.isEmpty{
            print("1")
        }else{
            print("0")
        }
    }else if cmd.first! == "top"{
        if stack.isEmpty{
            print("-1")
        }else{
            print(stack.last!)
        }
    }
}

