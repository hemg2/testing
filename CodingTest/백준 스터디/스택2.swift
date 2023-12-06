//
//  스택2.swift
//  CodingTest
//
//  Created by 1 on 12/5/23.
//

import Foundation

/*
 괄호
 let n = Int(readLine()!)!

 for _ in 0..<n {
     let input = readLine()!
     var stack = [Character]()
     var isGunDy = true
     
     for i in input {
         if i == "(" {
             stack.append(i)
         } else if i == ")" {
             if stack.isEmpty {
                 isGunDy = false
                 break
             }
             stack.removeLast()
         }
     }
     
     if isGunDy && stack.isEmpty  {
         print("YES")
     } else {
         print("NO")
     }
 }

 
 func isBalanced(_ input: String) -> String {
     var stack = [Character]()
     
     for char in input {
         if char == "(" || char == "[" {
             stack.append(char)
         } else if char == ")" {
             if let last = stack.last, last == "(" {
                 stack.removeLast()
             } else {
                 return "no"
             }
         } else if char == "]" {
             if let last = stack.last, last == "[" {
                 stack.removeLast()
             } else {
                 return "no"
             }
         }
     }
     
     return stack.isEmpty ? "yes" : "no"
 }

 while let input = readLine(), input != "." {
     let result = isBalanced(input)
     print(result)
 }
 */
