//
//  1단계.swift
//  CodingTest
//
//  Created by 1 on 2023/04/17.
//

import Foundation


/*
 크기가 작은 부분문자열
 func solution(_ t:String, _ p:String) -> Int {
     var count: Int = 0
     
     for i in 0...(t.count - p.count) {
         print("\(i) 나 뭐야?  \(t.count) 777  \(p.count) 333 ")
           let startIndex = t.index(t.startIndex, offsetBy: i)
           let endIndex = t.index(startIndex, offsetBy: p.count)
           let substring = t[startIndex..<endIndex]
           
           if let number = Int(substring) {
               if number <= Int(p)! {
                   count += 1
               }
           }
       }
     return count
 }
 print(solution("3141592", "271"))
 
 소수 만들기
 func getFactors(of number: Int) -> [Int] {
     var factors: [Int] = []
     for i in 2...number {
         if number % i == 0 {
             factors.append(i)
         }
     }
     return factors
 }

 func solution(_ nums:[Int]) -> Int {
     var answer = 0
     
     for i in 0..<nums.count {
         for j in i+1..<nums.count {
             for k in j+1..<nums.count {
                 let sum = nums[i] + nums[j] + nums[k]
 //                print("\(nums[i]), \(nums[j]), \(nums[k]) = \(sum)")
                 
     
                 let a = getFactors(of: sum)
 //                print("\(a) a의 값")
                 if a.count == 1 {
                     answer += 1
                 }
             }
         }
     }
     
     return answer
 }
 print(solution([1, 2, 3, 4]))
 print(solution([1, 2, 7, 6, 4]))
 
  문자열 내 p 와 y 의 갯수
  func solution(_ s:String) -> Bool {
      var countP = 0
      var countY = 0
      for i in s {
  //        print("\(i)i 의값")
          if i == "p" || i == "P" {
              countP += 1
          } else if i == "Y" || i == "y" {
              countY += 1
          }
      }
      print(countP)
      print(countY)
      if countP == countY {
          return true
      } else {
          return false
      }
  }
  print(solution("pPoooyY"))
  print(solution("Pyy"))
  
  
   나머지가 1이 되는 수 찾기
  //func solution(_ n:Int) -> Int {
  //    var a = 0
  //    for i in 2...n {
  //        if n % i == 1 {
  //         return i
  //        }
  //    }
  //    return a
  //}
  //print(solution(10))
 
 
 
 */
