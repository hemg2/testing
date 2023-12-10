//
//  스택2.swift
//  CodingTest
//
//  Created by 1 on 12/5/23.
//

import Foundation
/*
 괄호의값
 let input = readLine()!.map { String($0) }
 var stack = [String]()
 var result = 0
 var temp = 1
 var isValid = true

 for (n, c) in input.enumerated() {
     if c == "(" {
         stack.append(String(c))
         temp *= 2
     } else if c == "[" {
         stack.append(String(c))
         temp *= 3
     }

     if c == ")" {
         if stack.isEmpty || stack.last != "(" {
             isValid = false
             break
         }
         if input[n-1] == "(" {
             result += temp
         }
         stack.removeLast()
         temp /= 2
     } else if c == "]" {
         if stack.isEmpty || stack.last != "[" {
             isValid = false
             break
         }
         if input[n-1] == "[" {
             result += temp
         }
         stack.removeLast()
         temp /= 3
     }
 }

 print(stack.isEmpty && isValid ? result : 0)
 */
/*
 좋은단어
 let n = Int(readLine()!)!
 var goodWordsCount = 0

 for _ in 0..<n {
     let word = readLine()!
     var stack = [Character]()

     for char in word {
         if let last = stack.last, last == char {
             stack.removeLast()
         } else {
             stack.append(char)
         }
     }

     if stack.isEmpty {
         goodWordsCount += 1
     }
 }
 print(goodWordsCount)
 */

/*
 쇠막대기
 
let n = readLine()!
var stack = 0
var result = 0
var lastSt: Character = " "

for i in n {
    if i == "(" {
        stack += 1
    } else {
        stack -= 1
        if lastSt == "(" {
            result += stack
        } else {
            result += 1
        }
    }
    lastSt = i
}
print(result)
 */
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
