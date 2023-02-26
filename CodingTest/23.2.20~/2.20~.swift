//
//  2.20~.swift
//  CodingTest
//
//  Created by 1 on 2023/02/20.
//

import Foundation


/*
 2.26
 //k번째수
 func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
     var result : [Int] = []
     
     for i in commands {
         var a = i[0]-1
         var b = i[1]-1
         var c = i[2]-1
         
 //        print("1 = \(a)")
 //        print("2 = \(b)")
 //        print("3 = \(c)")
         var aa = array[a...b].sorted()
         print("aa = \(aa)")
         result.append(aa[c])
         
     }
  
     return result
 }
 print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))

 
 2.23 
 // 이상한 문자 만들기
 func solution(_ s:String) -> String {
     var a : [String] = []
     var b = 0
     
     for i in s {
         if b % 2 == 0 {
             a.append(String(i.uppercased())) //b가 짝수라면 대문자를 추가하겠다
         } else {
             a.append(String(i.lowercased())) //b가 짝수가 아니라면 소문자를 추가하겠다
         }
         b += 1 // 1를 b에 더해주겠다.
         
         if i == " " { // 하지만 i 가 띄어쓰기라면
             b = 0 // b는 0이다
         }
     }
     return a.joined()
 }
 print(solution("try hello world"))
 
 
 // 부족한 금액 계산하기
 //func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
 //    var answer:Int64 = Int64(money)
 //    var a = price
 //    var b:Int64 = 0
 //
 //    for i in 1...count {
 //        b += Int64(i * a)
 ////        print(i)
 //    }
 ////    print(b)
 //    var c = b - answer
 //
 //    if b < answer {
 //        return 0
 //    }
 //    print("c = \(c)")
 //    return c
 //}
 //print(solution(3, 20, 4))

 
 
 // 문자열 다루기 기본
 //func solution(_ s:String) -> Bool {
 //    if s.count == 4 || s.count == 6 {
 //        if Int(s) != nil {
 //            return true
 //        } else {
 //            return false
 //        }
 //    }
 //    return false
 //}
 //print(solution("a1234"))
 //print(solution("1234"))

 */
