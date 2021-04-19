//
//  1267.swift
//  YoungSang
//
//  Created by 유저 on 2021/04/08.
//

import Foundation

/*
영식 요금제
민식 요금제
영식 요금제는 30초마다 10원씩 청구된다. 이 말은 만약 29초 또는 그 보다 적은 시간 통화를 했으면 10원이 청구된다. 만약 30초부터 59초 사이로 통화를 했으면 20원이 청구된다.

민식 요금제는 60초마다 15원씩 청구된다. 이 말은 만약 59초 또는 그 보다 적은 시간 통화를 했으면 15원이 청구된다. 만약 60초부터 119초 사이로 통화를 했으면 30원이 청구된다.

동호가 저번 달에 새악대로 T 통신사를 이용할 때 통화 시간 목록이 주어지면 어느 요금제를 사용 하는 것이 저렴한지 출력하는 프로그램을 작성하시오.
*/

var phoneNum = Int(readLine()!)!
var phoneNum2 = readLine()!
var phoneNumArr = phoneNum2.split(separator: " ").map{ Int($0)!}
var ySick = 0, mSick = 0

// 배열에 값을 받아서 y인지 m인지 정해주기?
for i in 0..<phoneNumArr.count{
    ySick += (phoneNumArr[i]/30 + 1)*10
    mSick += (phoneNumArr[i]/60 + 1)*15
}
if ySick > mSick{
    print("M",mSick, terminator:" ")
}else if mSick > ySick{
    print("Y",ySick, terminator:" ")
}else {
    print("Y M", ySick, terminator:" ")
}
