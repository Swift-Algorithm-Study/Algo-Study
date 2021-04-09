
// 백준 10093 숫자
// 두 양의 정수가 주어졌을 대, 두 수 사이에 있는 정수를 모두 출력하는 프로그램을 작성하시오.

import Foundation

let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = [Int]()

let min:Int = arr.min()!
let max:Int = arr.max()!

if min != max {
    for i in min+1..<max {
        result.append(i)
    }
}

print(result.count)
print(result.map { "\($0)" }.joined(separator: " ") )
