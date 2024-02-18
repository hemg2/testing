//
//  그리디.swift
//  CodingTest
//
//  Created by 1 on 2/13/24.
//

import Foundation
/*
 로프
 let n = Int(readLine()!)!
 var ro = [Int]()
 for _ in 0..<n {
     let a = Int(readLine()!)!
     ro.append(a)
 }
 ro.sort(by: >)

 var maxs = 0
 for (index, rope) in ro.enumerated() {
     let a = rope * (index + 1)
     maxs = max(maxs, rope * (index + 1))
 }
 print(maxs
 */
/*
 동전 0
 let input = readLine()!.split(separator: " ").map { Int($0)! }
 let n = input[0]
 var m = input[1]

 var coin = [Int]()
 for _ in 0..<n {
     let a = Int(readLine()!)!
     coin.append(a)
 }
 coin.sort(by: >)

 var count = 0
 for i in coin {
     if m >= i {
         count += m / i
         m %= i
     }
 }

 print(count)
 */
