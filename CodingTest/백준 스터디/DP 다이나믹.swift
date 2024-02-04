//
//  DP 다이나믹.swift
//  CodingTest
//
//  Created by 1 on 1/29/24.
//

import Foundation
/*
 구간합구하기4
 var input = readLine()!.split(separator: " ").map { Int($0)! } // 5 3
 let n = input[0]  // 5
 let m = input[1]  // 3
 let numbers = readLine()!.split(separator: " ").map { Int($0)! } // 5 4 3 2 1
 var sum = [Int](repeating: 0, count: n+1)

 for i in 1..<n+1 {
     sum[i] = sum[i-1] + numbers[i-1]
 }

 for _ in 0..<m {
     let mCount = readLine()!.split(separator: " ").map { Int($0)! }
     let firstM = mCount[0] // 1
     let secondM = mCount[1] // 3
     
     let result = sum[secondM] - sum[firstM - 1]
     print(result)
 }
 */
/*
 func 타일(n: Int) -> Int {
     var dp = [Int](repeating: 0, count: n+1)
     dp[1] = 1
     
     if n > 1 {
         dp[2] = 2
         for i in 3..<n+1 {
             dp[i] = (dp[i-1] + dp[i-2]) % 10007
         }
     }
     return dp[n]
 }
 let n = Int(readLine()!)!
 print(타일(n: n))
 */
/*
 func rgb거리(house: [[Int]]) -> Int {
     var dp = house
     for i in 1..<house.count {
         dp[i][0] += min(dp[i-1][1], dp[i-1][2]) //49 + min(40, 83)
         dp[i][1] += min(dp[i-1][0], dp[i-1][2]) //60 + min(26, 83)
         dp[i][2] += min(dp[i-1][0], dp[i-1][1]) //57 + min(26, 40)
     }
 //    print("\(dp) asd \(house.count - 1)")
     return dp[house.count-1].min()! // 작은값
 }

 let n = Int(readLine()!)!
 var result = [[Int]]()

 for _ in 0..<n {
     let m = readLine()!.split(separator: " ").map { Int($0)! }
     result.append(m)
 }
 print(rgb거리(house: result))
 */
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
