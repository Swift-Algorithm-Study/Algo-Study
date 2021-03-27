###swift 알고리즘에 필요한 기본 문법 정리 


######1. 키보드 입력받는 방법
***
let num = readLine() //리턴값은 Optional String 언래핑 필요
***

######2. 입력값 공백으로 구분해서 받는 법  
***
// 입력: 1 2 3 4 
let nums = readLine()!.split(separator:" ")
***

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


