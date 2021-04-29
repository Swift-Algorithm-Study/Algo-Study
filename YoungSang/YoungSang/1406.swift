//
//  1406.swift // 연결리스트 구현
/*

 */
import Foundation

var inputStr:String = readLine()!
var input = Int(readLine()!)!
var count = inputStr.count

for i in 0..<input{
    var cmd = readLine()!.split(separator:" ")
    if cmd[0] == "L"{
        if count != 0{
            count -= 1
        }else {
            continue
        }
    }else if cmd[0] == "D"{
        if count != inputStr.count{
            count += 1
        }else{
            continue
    
        }
    }else if cmd[0] == "B"{
        if count != 0{
            inputStr.remove(at: inputStr.index(inputStr.startIndex, offsetBy: count-1))
        }
        else{
            continue
        }
    }else if cmd[0] == "P"{
        inputStr.insert(contentsOf: cmd[1], at: inputStr.index(inputStr.startIndex, offsetBy: count))    }
}
print(inputStr)

//if let str = readLine() {
//    let n = readLine().map{Int($0)!}!
//
//    var stackL = str
//    var stackR = ""
//
//    for _ in 0..<n {
//        var order = readLine()
//        switch order {
//        case "L":
//            if stackL != "" {
//                let c = stackL.removeLast()
//                stackR.append(c)
//            }
//        case "D":
//            if stackR != "" {
//                let c = stackR.removeLast()
//                stackL.append(c)
//            }
//        case "B":
//            if stackL != "" {
//                stackL.removeLast()
//            }
//        default:
//            let p = order!.removeLast()
//            stackL.append(p)
//        }
//    }
//
//    print(stackL + stackR.reversed())
//
//}
