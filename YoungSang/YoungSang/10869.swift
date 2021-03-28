//10869 사칙연산

import Foundation

let num = readLine()!
//let numArray = num.component(separatorby:" ").map() { Int($0) }
let numArray = num.split(separator:" ").map() { Int($0)! }
print(numArray[0] + numArray[1])
print(numArray[0] - numArray[1])
print(numArray[0] * numArray[1])
print(numArray[0] / numArray[1])
print(numArray[0] % numArray[1])

