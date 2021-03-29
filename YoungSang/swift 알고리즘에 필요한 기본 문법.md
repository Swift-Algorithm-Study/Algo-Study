###swift 알고리즘에 필요한 기본 문법 정리 


######1. 키보드 입력받는 방법
***
let num = readLine() //리턴값은 Optional String 언래핑 필요
***

######1-1. 입력값 공백으로 구분해서 받는 법  
func print(_ items: Any..., separator: String = default, terminator: String = default)
print(_:separator:terminator:) - print() 원형 

***
// 입력: 1 2 3 4 
let nums = readLine()!.split(separator:" ")
***
######2 print시 separator + terminator 


######3. 빈 배열 생성 
***
var empty: [Int] = []
***
######4. 2차원 배열(행렬)
***
let matrix = [[Int]]()
let arr: [[Int]] = Array(repeating: Array(repeating: 3, count: 5), count:3)
안쪽 카운트가 행 + 바깥쪽 카운트가 열 
출력 = [[[3, 3, 3, 3, 3], [3, 3, 3, 3, 3], [3, 3, 3, 3, 3]]
***

######5. 배열 정렬 
***
array.sorted() // default 는 오름차순 
array.sorted(by: >) //내림차순 
***

######6. map, reduce, filter 정리 



출처: https://zeddios.tistory.com/86 [ZeddiOS]
출처: https://twih1203.medium.com/swift-%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98%EC%97%90-%ED%95%84%EC%9A%94%ED%95%9C-swift-basic-%EC%B4%9D%EC%A0%95%EB%A6%AC-d86453bbeaa5
