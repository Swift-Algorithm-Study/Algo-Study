//
//  기능개발.swift
//  JunsangYu
//
//  Created by 유준상 on 2021/05/11.
//

// removeLast 같은 프로퍼트를 사용하면 O(n^2)시간이들지만, 커서를 활용해 O(n)의 시간으로 줄일 수 있음

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//    var Q = [Int]()
    var Ans = [Int]()
    
//    for idx in progresses.indices { // .indices : 배열을 첨자에 유효한 인덱스를 오름차순으로 나타내는 유형입니다. Range<Int> 타입
//        Q.append((100 - progresses[idx] - 1) / speeds[idx] + 1)
//    } // 리듀스로 처리할 수 있음
    
    let Q = (0..<progresses.count).reduce(into: [Int](), { arr, idx in
        // The compiler is unable to type-check this expression in reasonable time; try breaking up the expression into distinct sub-expressions 에러 : 식을 분할해야함, 안에 코드가 너무 길어서 컴파일러가 한번에 읽지못하는 오류
        let remain = 100 - progresses[idx] - 1
        arr.append(remain / speeds[idx] + 1)
    })
    
    var cur = 0
    while cur < Q.count {
        let nowDelay = Q[cur]
        var taskCnt = 0
        while cur < Q.count && Q[cur] <= nowDelay {
            taskCnt += 1
            cur += 1
        }
        Ans.append(taskCnt)
    }
    return Ans
}

//print(solution([93,30,55], [1,30,5]))
