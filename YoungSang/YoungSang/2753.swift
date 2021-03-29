// 윤년 문제
//  main.swift
//  YoungSang
//
//  Created by 유저 on 2021/03/29.
//윤년은 연도가 4의 배수이면서 + 100의 배수가 아닐 때 또는 400의 배수일 때
//이렇게 푸는게 최선일까?
import Foundation
var numA = Int(readLine()!)

if (((numA! % 4 == 0) && !(numA! % 100 == 0)) || (numA! % 400 == 0)){
    print("1")
} else {
    print("0")
}
