//
//  정렬2.swift
//  CodingTest
//
//  Created by 1 on 1/19/24.
//

import Foundation
/*
 접미사 배열
 let n = readLine()!
 var result = [String]()
 var input = n
 for _ in 0..<n.count {
     result.append(input)
     input.removeFirst()
 }
 result.sort()


 print("\(result.joined(separator: "\n"))")
 */
/*
 나이순 정렬
 let a = Int(readLine()!)!
 var result = [(Int, String)]()

 for _ in 0..<a {
     let input = readLine()!.split(separator: " ")
     let age = Int(input[0])!
     let name = String(input[1])
     
     result.append((age, name))
 }

 result.sort { $0.0 < $1.0 }

 for i in result {
     print("\(i.0) \(i.1)")
 }
 */
/*
 빈도 정렬
 let n = readLine()!.split(separator: " ").map { Int($0)! }
 //let n1 = n[0]
 let m = readLine()!.split(separator: " ").map { Int($0)! }

 var first = [Int: Int]()
 var firstnumber = [Int: Int]()

 for (index, number) in m.enumerated() {
     first[number, default: 0] += 1
 //    print("\(index) index /// \(number) number")
     if firstnumber[number] == nil {
         firstnumber[number] = index
     }
 }

 let sortm = m.sorted {
     let f = first[$0]
     let f1 = first[$1]
 //    print("\(f) ff /// \(f1) f1 f1")
     if f == f1 {
         return firstnumber[$0]! < firstnumber[$1]!
     }
     
     return f! > f1!
 }
 print(sortm.map { String($0) }.joined(separator: " "))
 */
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
