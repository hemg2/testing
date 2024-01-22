//
//  정렬2.swift
//  CodingTest
//
//  Created by 1 on 1/19/24.
//

import Foundation
/*
 단어 정렬
 let n = Int(readLine()!)!
 var setSt = Set<String>()

 for _ in 0..<n {
     let input = readLine()!
     setSt.insert(input)
 }

 let sortSt = setSt.sorted {
     if $0.count == $1.count {
         return $0 < $1
     }
     return $0.count < $1.count
 }
 print(sortSt.joined(separator: "\n"))
 */
/*
 역원소 정렬
 let n = readLine()!.split(separator: " ").map { String($0) }
 let n1 = Int(n[0])!
 var numbers = [Int]()

 for i in 1..<n.count {
     let num = Int(String(n[i].reversed()))
     numbers.append(num!)
 }

 while let input = readLine() {
     let number = input.split(separator: " ").map { String($0) }
     
     for i in number {
         let re = Int(String(i.reversed()))
         numbers.append(re!)
     }
 }
 numbers.sort()
 print(numbers.map{String($0)}.joined(separator: "\n"))
 */
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
