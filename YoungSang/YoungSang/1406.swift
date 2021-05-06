//
//  1406.swift // 연결리스트 구현
/*

 */
import Foundation

var inputStr:String = readLine()!
var input = Int(readLine()!)!
var count = inputStr.count

for _ in 0..<input{
    var cmd = readLine()!.split(separator:" ")
    if cmd[0] == "L"{
        if count != 0{
            count -= 1
        }else{
            count = 0
        }
    }else if cmd[0] == "D"{
        if count != inputStr.count{
            count += 1
        }else{
            count = inputStr.count
        }
    }else if cmd[0] == "B"{
        if count != 0{
            inputStr.remove(at: inputStr.index(inputStr.startIndex, offsetBy: count-1 ))
            count -= 1
        }
        else{
            continue
        }
    }else if cmd[0] == "P"{
        inputStr.insert(contentsOf: cmd[1], at: inputStr.index(inputStr.startIndex, offsetBy: count))
            count += 1
    }
}
print(inputStr)

//시간초과 // 스택으로 다시 풀어야 할듯?
