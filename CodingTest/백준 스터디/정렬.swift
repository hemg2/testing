//
//  정렬.swift
//  CodingTest
//
//  Created by 1 on 1/14/24.
//

import Foundation
/*
 좌표 압축
 let input1 = Int(readLine()!)!
 let input2 = readLine()!.split(separator: " ").compactMap { Int($0) }

 let uniqueCoordinates = Set(input2).sorted()
 //print("\(uniqueCoordinates) asdf")
 var compressed = [Int: Int]()

 for (index, value) in uniqueCoordinates.enumerated() {
     compressed[value] = index
   //  print("\(compressed)123")
 }

 let a = input2.map { compressed[$0]! }
 //print("\(a) aaa")
 print(a .map { String($0) }.joined(separator: " "))

 */
/*
 좌표 정렬하기 2
 let input = readLine()!
 let number = Int(input)!
 var result = [(Int, Int)]()

 for _ in 0..<number {
     let row = readLine()!.split(separator: " ").compactMap { Int($0) }
     let n = row[0]
     let m = row[1]
     result.append((n, m))
 }
 result.sort {
     if $0.1 != $1.1 {
         return $0.1 < $1.1
     } else {
         return $0.0 < $1.0
     }
 }

 for i in result {
     print("\(i.0) \(i.1)")
 }
 */
/*
 좌표 정렬하기
 let input = readLine()!
 let number = Int(input)!
 var result = [(Int, Int)]()

 for _ in 0..<number {
     let row = readLine()!.split(separator: " ").compactMap { Int($0) }
     let n = row[0]
     let m = row[1]
     result.append((n, m))
 }
 result.sort(by: <)

 for i in result {
     print("\(i.0) \(i.1)")
 }
 */
/*
 수 정렬하기
 let input = readLine()!
 let number = Int(input)!
 var result = [Int]()
 for _ in 0..<number {
     let row = Int(readLine()!)!
     result.append(row)
 }
 print(result.sorted().map {String($0)}.joined(separator: "\n"))
 */
