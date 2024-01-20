//
//  정렬2.swift
//  CodingTest
//
//  Created by 1 on 1/19/24.
//

import Foundation

/*
 카드
 let n = Int(readLine()!)!
 var cards = [Int]()
 var countDict = [Int: Int]()

 for _ in 0..<n {
     let card = Int(readLine()!)!
     cards.append(card)
 }

 for card in cards {
     countDict[card, default: 0] += 1
 }

 if let maxCount = countDict.values.max() {
     let mostFrequent = countDict.filter { $0.value == maxCount }.map { $0.key }.min()!
     print(mostFrequent)
 }
 */
/*
 시리얼 번호
 let n = Int(readLine()!)!
 var st = [String]()

 for _ in 0..<n {
     st.append(readLine()!)
 }

 st.sort {
     if $0.count != $1.count {
         return $0.count < $1.count
     } else {
         var first = 0
         var second = 0
         
         for i in $0 {
             if let number = i.wholeNumberValue { // 숫자 문자들 변경
                 first += number
             }
         }
         
         for i in $1 {
             if let number = i.wholeNumberValue {
                 second += number
             }
         }
         
         if first != second {
             return first < second
         } else {
             return $0 < $1
         }
     }
 }
 print(st.map{String($0)}.joined(separator: "\n"))
 */
