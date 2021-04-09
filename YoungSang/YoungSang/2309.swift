//
//  main .swift
//  YoungSang
//
//  Created by 유저 on 2021/04/03.
//2309

import Foundation

func combos<T>(elements: ArraySlice<T>, k: Int) -> [[T]] {
    if k == 0 {
        return [[]]
    }

    guard let first = elements.first else {
        return []
    }

    let head = [first]
    let subcombos = combos(elements: elements, k: k - 1)
    var ret = subcombos.map { head + $0 }
    ret += combos(elements: elements.dropFirst(), k: k)

    return ret
}

func combos<T>(elements: Array<T>, k: Int) -> [[T]] {
    return combos(elements: ArraySlice(elements), k: k)
}
var nums = readLine()!.split(separator: " ").map{Int($0)!}
var numCount = 0
combos(elements:nums,k:7)
var total = 100
print(nums)
//for i in 0..<nums.count{
//    if  total == nums[i].reduce(0,+){
//        numCount += 1
//    }
//}
//print(numCount)
