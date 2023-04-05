//
//  0단계.swift
//  CodingTest
//
//  Created by 1 on 2023/04/05.
//

import Foundation

/*
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
