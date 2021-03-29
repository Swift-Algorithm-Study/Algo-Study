//
//  main.swift
//  YoungSang
//
//  Created by 유저 on 2021/03/29.
//Int형을 조인하는 것은 없나? joined함수는 무조건 String만 해주나?
//joined메소드 찾아보자!!

import Foundation

var num = readLine()!

var numArr = num.split(separator: " ").map { Int($0)!}.sorted()
for index in numArr{
    print(index,terminator:" ")
}
//이렇게 포문으로 출력하는게 최선인가?
