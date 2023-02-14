//
//  2.13.swift
//  CodingTest
//
//  Created by 1 on 2023/02/14.
//

import Foundation

/*
 2.14
 
 문자열 내림차순 배치
 func solution(_ s:String) -> String {
     return String(s.sorted(by: >))
 }
 런타임 에러?...

 func solution(_ s:String) -> String {
     var a = String(s.sorted(by: >))
     return a
 }
이건 통과..????
 
 
 정수 내림차순 배치
 func solution(_ n:Int64) -> Int64 {
     var a: [Int] = []
     let b = String(n)
     var bb = ""
     for i in b.sorted(by: >) {
         let c = Int(String(i))!
         a.append(c)
         print("a의 값\(a)")
     }
     
     a.map {
         bb = bb + "\($0)"
     }
     let aa = Int(bb)!
     배열인트에서 인트로 변경하는방법 swift int array to int
     return Int64(Int(aa))
 }
 print(solution(118372))

 
 
 
 자연수 뒤집어 배열로 만들기
 unc solution(_ n:Int64) -> [Int] {
     var a : [Int] = []
     var b = String(n)
     
     for i in b {
         var c = Int(String(i))!
         a.append(c)
     }
     return a.reversed()
 }
 print(solution(12345))
 자연수 뒤집어 배열로 만들기 인트안에 스트링이 감싸지는게 됬따.......
 
 
 
 
 2.13
  음양 더하기
 func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
     var a : [Int] = []
     var b : Int = 0
     

     for j in 0..<absolutes.count {
         if signs[j] == true {
             a.append(absolutes[j])
         } else {
             a.append(-absolutes[j])
         }
     }
     
     for i in a {
         b += i
     }
    
     return b
 }
 print(solution([4,7,12], [true, false, true]))
 print(solution([4,7,12], [false, true, false]))
 print(solution([1,2,3], [false, false, true]))
 print(solution([1,2,3,5], [false, false, true, false]))
 
 
 
 */
