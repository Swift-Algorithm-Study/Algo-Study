

/*
 2439번
 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
하지만, 오른쪽을 기준으로 정렬한 별(예제 참고)을 출력하시오.
    *
   **
  ***
 ****
*****
*/
import Foundation

var num = Int(readLine()!)!
for i in 1...num{
    for _ in stride(from: num, to: i, by: -1) {
        print(" ", terminator:"")
    }
    for _ in stride(from: 0, to: i, by: 1){3
        print("*", terminator:"")
    }
    print("")
}

