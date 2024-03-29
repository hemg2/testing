//
//  재귀.swift
//  CodingTest
//
//  Created by 1 on 12/31/23.
//

import Foundation
/*
 암호 만들기
 func back(n: [String], k: Int) {
     var a = [String]()
     var result = ""
     let aeiou: [Character] = ["a", "e", "i", "o", "u"]
     
     func backtrack(index: Int, count: Int, sCount: Int) {
         if a.count == k {
             if count >= 1 && sCount >= 2 {
                 result += a.map{String($0)}.joined(separator: "") + "\n"
             }
             return
         }
         
         for i in index..<n.count {
             a.append(String(n[i]))
             if aeiou.contains(Character(n[i])) {
                 backtrack(index: i + 1, count: count + 1, sCount: sCount)
             } else {
                 backtrack(index: i + 1, count: count, sCount: sCount + 1)
             }
             
             a.removeLast()
         }
     }
     backtrack(index: 0, count: 0, sCount: 0)
     print(result)
 }

 let input = readLine()!.split(separator: " ").compactMap( { Int($0)} )
 let secondInput = readLine()!.split(separator: " ").map { String($0) }
 //let secondInput1 = Character(secondInput)
 let n = input[0]
 //let k = input[1]
 back(n: secondInput.sorted(), k: n)
 */
/*
 로또
 func back(n: [Int], k: Int) {
     var a = [String]()
     var result = ""
     
     func backtrack(index: Int) {
         if a.count == k {
             result += a.joined(separator: " ") + "\n"
             return
         }
         
         for i in index..<n.count {
             a.append(String(n[i]))
             backtrack(index: i + 1)
             a.removeLast()
         }
     }
     backtrack(index: 0)
     print(result)
 }

 //let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
 //let secondInput = readLine()!.split(separator: " ").compactMap({ Int($0) })
 //let thirdInput = readLine()!.split(separator: " ").compactMap({ Int($0) })
 while let input = readLine() {
     let input1 = input.split(separator: " ").compactMap( { Int($0) } )
     if input1[0] != 0 {
         let n = Array(input1[1...])
         let k = 6
         back(n: n, k: k)
     }
 }
 */
/*
 N 과 M(7)
 func back(n: [Int], k: Int) {
 //    var a = [Int]()
     var result = ""
     var stack = [String]()
     
     func backtrack() {
         if stack.count == k {
             result += stack.joined(separator: " ") + "\n"
             return
         }
         
         for i in 0..<n.count {
             stack.append(String(n[i]))
             backtrack()
             stack.removeLast()
         }
     }
     backtrack()
     print(result)
 }

 let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
 let secondInput = readLine()!.split(separator: " ").compactMap({ Int($0) }).sorted()

 let n = input[0]
 let k = input[1]
 if secondInput.count == n {
     back(n: secondInput, k: k)
 }
 */
/*
 N 과 M(6)
 func back(n: [Int], k: Int) {
     var a = [Int]()
     var result = ""
     
     func backtrack(index: Int) {
         if a.count == k {
             result += a.map { String($0) }.joined(separator: " ") + "\n"
             return
         }
         
         for i in index..<n.count {
             a.append(n[i])
             backtrack(index: i + 1)
             a.removeLast()
         }
     }
     backtrack(index: 0)
     print(result)
 }

 let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
 let secondInput = readLine()!.split(separator: " ").compactMap({ Int($0) }).sorted()

 let n = input[0]
 let k = input[1]
 if secondInput.count == n {
     back(n: secondInput, k: k)
 }
 */
/*
 N 과 M(5)
 func back(n: [Int], k: Int) {
     var a = [Int]()
     var used = [Bool](repeating: false, count: n.count)
     var result = ""
     
     func backtrack() {
         if a.count == k {
             result += a.map { String($0) }.joined(separator: " ") + "\n"
             return
         }
         
         for i in 0..<n.count {
             if !used[i] {
                 used[i] = true
                 a.append(n[i])
                 backtrack()
                 used[i] = false
                 a.removeLast()
             }
         }
     }
     backtrack()
     print(result)
 }

 let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
 let secondInput = readLine()!.split(separator: " ").compactMap({ Int($0) }).sorted()

 if input.count == 2 {
     let n = input[0]
     let k = input[1]
     if secondInput.count == n {
         back(n: secondInput, k: k)
     }
 }
 */
/*
 N 과 M(4)
 func back(n: Int, k: Int) {
     var a = [Int]()
     var result = ""
     
     func backtrack(index: Int) {
         if a.count == k {
             result += a.map { String($0) }.joined(separator: " ") + "\n"
             return
         }
         
         for i in index...n {
             a.append(i)
             backtrack(index: i)
             a.removeLast()
         }
     }
     backtrack(index: 1)
     print(result)
 }

 let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
 let n = input[0]
 let k = input[1]
 back(n: n, k: k)
 */
/*
 N 과 M(3)
 func back(n: Int, k: Int) {
     var a = [Int]()
     var result = ""
     
     func backtrack(index: Int) {
         if a.count == k {
             result += a.map { String($0) }.joined(separator: " ") + "\n"
             return
         }
         
         for i in index...n {
                 a.append(i)
                 backtrack(index: 1)
                 a.removeLast()
         }
     }
     backtrack(index: 1)
     print(result)
 }

 let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
 if input.count == 2 {
     let n = input[0]
     let k = input[1]
     back(n: n, k: k)
 }
 */
/*
 N 과 M(2)
 func back(n: Int, k: Int) {
     var a = [Int]()
     
     func backtrack(index: Int) {
         if a.count == k {
             print(a.map {String($0)}.joined(separator: " "))
             return
         }
         
         for i in index..<n+1 {
                 a.append(i)
                 backtrack(index: i + 1)
                 a.removeLast()
         }
     }
     backtrack(index: 1)
 }

 let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
 if input.count == 2 {
     let n = input[0]
     let k = input[1]
     back(n: n, k: k)
 }
 */

/*
 재귀함수가 뭔가요
 func test(_ n: Int, _ depth: Int = 0) {
     let indent = String(repeating: "____", count: depth)
     
     if depth == n {
         print("\(indent)\"재귀함수가 뭔가요?\"")
         print("\(indent)\"재귀함수는 자기 자신을 호출하는 함수라네\"")
         print("\(indent)라고 답변하였지.")
         return
     }

     print("\(indent)\"재귀함수가 뭔가요?\"")
     print("\(indent)\"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.")
     print("\(indent)마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.")
     print("\(indent)그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어.\"")
     test(n, depth + 1)
     print("\(indent)라고 답변하였지.")
 }

 let n = Int(readLine()!)!
 print("어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.")
 test(n)

 */
/*
 Z
 func position(_ n: Int, _ x: Int, _ y: Int) -> Int {
     var answer = 0
     var n = n
     var x = x
     var y = y

     while n > 0 {
         n -= 1
         let half = 1 << n

         if x < half && y < half {
             continue
         }
         if x < half && y >= half {
             answer += half * half
             y -= half
         }
         if x >= half && y < half {
             answer += 2 * half * half
             x -= half
         }
         if x >= half && y >= half {
             answer += 3 * half * half
             x -= half
             y -= half
         }
     }

     return answer
 }

 let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
     if input.count == 3 {
     let result = position(input[0], input[1], input[2])
     print(result)
 }
 */
/*
 곱셈
 
func power(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if b == 0 {
        return 1
    }
    
    let aa = power(a, b / 2, c)
    let bb = (aa * aa) % c
    
    if b % 2 == 0 {
        return bb
    } else {
        return (a * bb) % c
    }
}

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
if input.count == 3{
    let result = power(input[0], input[1], input[2])
    print(result)
}
 */
