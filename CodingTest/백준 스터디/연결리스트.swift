//
//  연결리스트.swift
//  CodingTest
//
//  Created by 1 on 11/16/23.
//

/*
 백준
요세푸스
 let input = readLine()!.split(separator: " ").map { Int(String($0))! }
 let n = input[0]
 let k = input[1]
 var a = [Int]()
 var b = Array(1...n)
 var c = 0 // 위치
 while !b.isEmpty {
 //    print(b)
 //    print(c)
      //  2 % 7
     c = (c + k - 1) % b.count
     let remove = b.remove(at: c)
     
     a.append(remove)
 }
  
  풍선 터트리기
  
 let n = Int(readLine()!)!
 var k = readLine()!.split(separator: " ").map { Int(String($0))! }

 var result = [Int]()
 var c = 0 // 위치
 var 풍선카운트 = Array(1...n)
 while !풍선카운트.isEmpty {
     let move = k[c % k.count]
 //    print(move)
     let b = k.remove(at: c % k.count)
 //    print(b)
     result.append(풍선카운트.remove(at: c % 풍선카운트.count))
 //    print(result)
     
     guard !k.isEmpty else { break }
     
     if move > 0 {
         c = (c + b - 1) % max(1, k.count)
     } else {
         c += b
         if c < 0 {
             c = (c % k.count + k.count) % k.count
         }
     }
 }

 print(result.map { String($0) }.joined(separator: " "))
  
 */
