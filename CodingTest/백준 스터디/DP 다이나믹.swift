//
//  DP 다이나믹.swift
//  CodingTest
//
//  Created by 1 on 1/29/24.
//

import Foundation

/*
 1로 만들기
 let n = Int(readLine()!)!
 var dp = [Int](repeating: 0, count: n + 1)

 for i in 2...n {
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
