//
//  main.swift
//  YoungSang
//
//  Created by 유저 on 2021/03/29.
//이중포문 알아가기!
/*
출력은 요렇게
*
**
***
****
*****
*/
//terminator를 해줘야 포문에 맞게 **늘어난다

import Foundation

var num = Int(readLine()!)!

for i in 1...num {
    for _ in 1...i {
        print("*",terminator:"")
    }
    print("")
}
