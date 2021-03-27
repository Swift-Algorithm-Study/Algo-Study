//
//  main.swift
//  YoungSangGo
//
//  Created by 유저 on 2021/03/27.
//
//
import Foundation

let line = Int(readLine()!)!
var arr1: [String] = []

for i in 0...line{
    arr1.append(readLine()!)
}
print(arr1)
arr1.sorted(by: back)



arrayOfGivenData = Array(Set(arrayOfGivenData)).sorted(by: { $0 < $1 }).sorted(by: { $0.count < $1.count })

for item in arrayOfGivenData{

  print(item)

}
