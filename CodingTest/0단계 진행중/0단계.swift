//
//  0단계.swift
//  CodingTest
//
//  Created by 1 on 2023/04/05.
//

import Foundation

/*
 
 
 점의 위치 구하기
 func solution(_ dot:[Int]) -> Int {
     var result = 0
     if dot[0] >= 0 && dot[1] >= 0 {
         result += 1
         return result
     } else if dot[0] <= 0 && dot[1] >= 0 {
         result += 2
         return result
     } else if dot[0] <= 0 && dot[1] <= 0 {
         result += 3
         return result
     } else if dot[0] >= 0 && dot[1] <= 0 {
         result += 4
         return result
     }
     
     return result
 }
 print(solution([2, 4]))
 print(solution([-7, 9]))
 
 경우의 수 구하기
 func factorial(_ number: Int) -> Double {
     var result = 1.0
     for i in 1...number {
         result *= Double(i)
     }
     
     return result
 }

 func solution(_ balls: Int, _ share: Int) -> Int {
     
     if balls == share {
         return 1
     }
     
 //    let a = (1...balls).reduce(1, *)
 //    let b = (1...share).reduce(1, *)
 //    let c = (1...(balls - share)).reduce(1, *)
 //    return a / (b * c) round 소수점 반올림
     return Int(round(factorial(balls) / (factorial(balls - share) * factorial(share))))
 }
 print(solution(3, 2))
 print(solution(5, 3))
 
 
 //가위 바위 보
 func solution(_ rsp:String) -> String {
     let 가위 = "2"
     let 바위 = "0"
     let 보 = "5"
     var str = ""
     var a = [Character]()
     for i in rsp {
         a.append(i)
     }
     let aa = a.map{String($0)}
     print(aa)
     for i in aa {
         if i == 가위 {
             str += 바위
         } else if i == 바위 {
             str += 보
         } else if i == 보 {
             str += 가위
         }
     }
     return String(str)
 }
 print(solution("2"))
 print(solution("205"))
 print(solution("502"))
 
 // 모스 부호
 func solution(_ letter:String) -> String {
     let morse = [
             ".-": "a", "-...": "b", "-.-.": "c", "-..": "d", ".": "e", "..-.": "f",
             "--.": "g", "....": "h", "..": "i", ".---": "j", "-.-": "k", ".-..": "l",
             "--": "m", "-.": "n", "---": "o", ".--.": "p", "--.-": "q", ".-.": "r",
             "...": "s", "-": "t", "..-": "u", "...-": "v", ".--": "w", "-..-": "x",
             "-.--": "y", "--..": "z"
         ]
     var str = ""         components를써서 에러처리가 해결 되었다 그래서 딕셔너리 키값에 넣을수있게 되었따.
     for i in letter.components(separatedBy: " ") {
         str += morse[i]!
     }
     return str
 }
 print(solution(".... . .-.. .-.. ---"))
 
 
 
 // 개미군단
 func solution(_ hp:Int) -> Int {
     let one: Int = 5
     let two: Int = 3
     let three: Int = 1
     var count = 0
     var testHp = hp
     
     while testHp > 0 {
         if testHp >= one {
             testHp -= one
         } else if testHp >= two {
             testHp -= two
         } else if testHp >= three {
             testHp -= three
         }
         count += 1
     }
     
     return count
 }
 print(solution(23))

 
 
 
 //진료순서 정하기  정렬 알고리즘 비슷함
 func solution(_ arr: [Int]) -> [Int] {
     let a = arr.sorted(by: >)
     var result = [Int]()
     
     for e in arr {
         for i in 0..<a.count {
             if e == a[i] {
                 result.append(i+1)
             }
         }
     }
     return result
 }
 
 
 //배열 원소의 길이
 func solution(_ strlist:[String]) -> [Int] {
     var a : [Int] = []
     
     for i in strlist {
         a.append(i.count)
     }

     return a
 }
 print(solution(["we", "are", "the", "wored!"]))
 
 
 //배열 유사도
 func solution(_ s1:[String], _ s2:[String]) -> Int {
     var a = 0
     for i in s1 {
         for j in s2 {
             if i == j {
                 a += 1
             }
         }
     }
     return a
 }
 print(solution(["a", "b", "c"], ["com", "b", "d", "p", "c"]))

 //최대값 만들기(1)
 func solution(_ numbers:[Int]) -> Int {
     var a: [Int] = []
     for i in numbers.sorted(by: >) {
         a.append(i)
     }
     var b = 0
     var c = 0
     b = a[0]
     c = a[1]
     var d = b * c
     return d
 }
 print(solution([1,2,3,4,5]))
 
 
 
 
 외계행성의나이
 func solution(_ age:Int) -> String {
     let a =
     [
         "0": "a",
         "1": "b",
         "2": "c",
         "3": "d",
         "4": "e",
         "5": "f",
         "6": "g",
         "7": "h",
         "8": "i",
         "9": "j"
     ]
     var str = ""
     
     for i in String(age) {
       str += a[String(i)]!
     }
     
     return str
 }
 print(solution(1))
 print(solution(2))
 print(solution(23))
 print(solution(51))
 print(solution(100))
 
 
 //순서쌍의 개수
 func solution(_ n:Int) -> Int {
     var count = 0
     for i in 1...n {
         if n % i == 0 { // 여기까지가 약수
             count += 1
         }
     }
     
     return count
 }
 print(solution(20))
 print(solution(100))
 
 특정문자 제거하기
 func solution(_ my_string:String, _ letter:String) -> String {
     var a: String = ""
     for i in my_string {
         a += String(i)
     }
     var b: [String] = []
     b.append(letter)
    let bb = b.map{String($0)}.joined()
     let cc = a.components(separatedBy: bb)
     return cc.map{String($0)}.joined()
 }
 print(solution("abcdef", "f"))
 
 
 //직삼각형 출력하기
 let n = readLine()!.components(separatedBy: [" "]) //.map { Int($0)! }
 var a: String = ""
 for i in n {
     a += i
 }

 var aa: String = ""
 for i in 1...Int(a)! {
     aa += "*"
     a = String(i)
     print(aa)
 }
 
 
 //같은 문자 반복하기
 func solution(_ my_string:String, _ n:Int) -> String {

     var a: [Character] = []
     for i in my_string {
         a += Array(repeating: i, count: n)
     }
     return a.map{String($0)}.joined()
 }
 print(solution("hello", 3))
 
 
 //옷가게 할인받기
 func solution(_ price:Int) -> Int {
     var a: Int = 0
     
     if price >= 500000 {
         a += price - Int(Double(price) * (0.2))
     } else if price >= 300000 {
         a += price - Int(Double(price) * (0.1))
     } else if price >= 100000 {
         a += price - Int(Double(price) * (0.05))
     } else {
         a = price
     }
     return a
 }
 func solution(_ price:Int) -> Int {
     var a: Int = 0
     
     if price >= 500000 {
         a += Int(Double(price) * (0.8))
     } else if price >= 300000 {
         a += Int(Double(price) * (0.9))
     } else if price >= 100000 {
         a += Int(Double(price) * (0.95))
     } else {
         a = price
     }
     return a
 }
 print(solution(150000))
 print(solution(580000))
 print(solution(280000))
 print(solution(0))

 
 피자 3
 func solution(_ slice:Int, _ n:Int) -> Int {
     var result = slice
     
     while result / n < 1 {
         result += slice
     }
     return result / slice
 }
 print(solution(7, 10))
 print(solution(4, 12))
 
 //피자
 func solution(_ n:Int) -> Int {
     var a: Int = 6
     while a % n != 0 {
         a += 6
     }
     let b = a / 6
     b값이 리턴으로가면 시간초과 변수로 만들경우 시간초과 x
     return b
 }
 print(solution(6))
 print(solution(10))
 print(solution(4))
 
 
 //짝수는 싫어요
 //func solution(_ n:Int) -> [Int] {
 //    var a : [Int] = []
 //    for i in 0...n {
 //        if i % 2 != 0 {
 //            a.append(i)
 //        }
 //    }
 //    return a
 //}
 //print(solution(15))
 ////최빈값 구하기
 //func solution(_ array:[Int]) -> Int {
 //    var maximum = 0
 //    var result = 0
 //    var myArray = [Int](repeating: 0, count: 100)
 //
 //    for i in array {
 //        myArray[i] += 1 // 입력받은 수를 myArray 배열의 위치자리로 1씩 더해줌
 //        print("\(i)i의값")
 //    }
 //    print("\(myArray)i의값")
 //    // 0...array는 배열의 인덱스 범위를 0부터 배열의 마지막 인덱스까지 모두 포함
 //    // 0..<array는 배열의 인덱스 범위를 0부터 배열의 마지막 인덱스 바로 이전까지만 포함
 //    for i in 0..<myArray.count{
 //        if maximum < myArray[i] { // 비교하는 것을 줄이기 위해, maximum을 하나씩 비교
 //            maximum = myArray[i] // 비교하였을때 maimum보다 크면 myArra안에 있는 수를 maimum에 대입
 //            result = i // myArray 배열의 위치자리를 찾아서 넣어줌
 //        } else if maximum == myArray[i]{
 //            result = -1 // myArray의 원소가 같다면 max<myArray가 실행되지 않음, 같을때 -1 출력
 //        }
 //    }
 //    return result
 //}
 //print(solution([1, 2, 3, 3, 3, 4]))
 //print(solution([1, 1, 2, 2]))
 //print(solution([1]))

 //중앙값 구하기
 //func solution(_ array:[Int]) -> Int {
 //    var bb: [Int] = []
 //    for i in array {
 //        bb.append(i)
 //    }
 //    let aa = array.sorted()
 //    print("\(aa)aa 정렬된 값")
 //    let b = aa.count / 2
 //    return aa[b]
 //}
 //print(solution([1, 2, 7, 10, 11]))
 //print(solution([9, -1, 0]))

 //분수의 덧셈
 //func gcd(_ a: Int, _ b: Int) -> Int {
 //    if a % b == 0 {
 //        return b
 //    }
 //    return gcd(b, a % b)
 //}
 //
 //func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
 //    let aa = (numer1 * denom2) + (numer2 * denom1)
 //    let bb = denom1 * denom2
 //    let cc = gcd(aa, bb)
 //
 //    var reulst = [aa / cc, bb / cc]
 //
 //    return reulst
 //}
 //print(solution(1, 2, 3, 4))
 
 */
