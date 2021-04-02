//
//  2440.swift
//  YoungSang
//
//  Created by 유저 on 2021/03/29.
//*****
//****
//***
//**
//*


import Foundation

var num = Int(readLine()!)!
for _ in 1...num{
    num = num-1
    for _ in (0...num){
        print("*", terminator:"")
    }
    print("")
}
