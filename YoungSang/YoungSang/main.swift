//주사위 세개

/*
 주사위 세개 던져서
 1. 같은 눈 3개 = 10000+ (같은눈)*1000
 2. 같은 눈 2개 = 1000+(같은눈)*100
 3. 모두 다른 눈 = (가장 큰 눈)* 100
*/
//이거 filter로 풀면 좋을 것 같은데

import Foundation

var num = readLine()!

var numArr = num.split(separator: " ").map { (Int($0)!)}

if (numArr[0]!)
