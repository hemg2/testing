//
//  1주차 배열, 연결리스트.swift
//  CodingTest
//
//  Created by 1 on 11/5/23.
//

/*

 배열
 알파벳 갯수
 var input = readLine()!
 var count: [Int] = Array(repeating: 0, count: 26)
 input = input.lowercased()

 for char in input {
     if let asciiValue = char.asciiValue {
        let index = Int(asciiValue) - 97
         count[index] += 1
     }
 }

 print(count.map{ String($0) }.joined(separator: " "))
 
 숫자 갯수
 var count = [Int](repeating: 0, count: 10)
 var a = 1

 for _ in 1...3 {
     if let input = readLine(), let number = Int(input) {
         a *= number
     }
 }
 while a > 0 {
     let b = a % 10
     count[b] += 1
     a /= 10
 }

 for i in 0...9 {
     print("\(count[i])")
 }
 
*/
