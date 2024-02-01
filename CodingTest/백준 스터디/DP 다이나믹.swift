//
//  DP 다이나믹.swift
//  CodingTest
//
//  Created by 1 on 1/29/24.
//

import Foundation
/*
 func 계단오르기(n: [Int]) -> Int {
     guard n.count > 0 else { return 0 }
     if n.count == 1 { return n[0] }
     var dp = [Int](repeating: 0, count: n.count)
     dp[0] = n[0]
     dp[1] = n[0] + n[1]
     
     if n.count > 2 {
         dp[2] = max(n[1] + n[2], n[0] + n[2])
     
     
     for i in 3..<n.count {
         dp[i] = max(dp[i-2] + n[i], dp[i-3] + n[i-1] + n[i])
     }
     }
     
     return dp[n.count - 1]
 }
 let n = Int(readLine()!)!
 var result = [Int]()
 for i in 0..<n {
     let m = Int(readLine()!)!
     result.append(m)
 }
 print(계단오르기(n: result))
 */
/*
 func 더하기_1_2_3숫자(n: Int) -> Int {
     guard n > 0 else { return 0 }
     var dp = [Int](repeating: 0, count: n + 1)
     dp[0] = 1
     if n > 0 {
         dp[1] = 1
     }
     if n > 1 {
         dp[2] = 2
         
         for i in 3..<n+1 {
             dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3]
         }
     }
     
     return dp[n]
 }
 let input = Int(readLine()!)!
 var result = [String]()

 for _ in 0..<input {
     let n = Int(readLine()!)!
     result.append(String(더하기_1_2_3숫자(n: n)))
 }
 print(result.joined(separator: "\n"))
 */
/*
 1로 만들기
 let n = Int(readLine()!)!
 var dp = [Int](repeating: 0, count: n + 1)

 for i in 2...n { -> for i in 2..<n+1 { 이렇게하니 런타임 에러 해결
     dp[i] = dp[i - 1] + 1
     
     if i % 2 == 0 {
         dp[i] = min(dp[i], dp[i / 2] + 1)
     }
     
     if i % 3 == 0 {
         dp[i] = min(dp[i], dp[i / 3] + 1)
     }
 }

 print(dp[n])
 */
