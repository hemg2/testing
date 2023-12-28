//
//  덱.swift
//  CodingTest
//
//  Created by 1 on 12/3/23.
//

import Foundation
/*
 AC
 import Foundation

 let T = Int(readLine()!)!
 for _ in 0..<T {
     let p = readLine()!
     let n = Int(readLine()!)!
     let arr = readLine()!.dropFirst().dropLast().split(separator: ",").map { Int(String($0))! }
     
     var head = 0, tail = n - 1
     var isReversed = false
     var isError = false
     
     for cmd in p {
         if cmd == "D" {
             if head > tail {
                 isError = true
                 break
             }
             if isReversed {
                 tail -= 1
             } else {
                 head += 1
             }
         } else {
             isReversed.toggle()
         }
     }
     
     if isError {
         print("error")
     } else if head > tail {
         print("[]")
     } else {
         let ans = arr[head...tail].map { String($0) }.joined(separator: ",")
         let reverseAns = arr[head...tail].reversed().map { String($0) }.joined(separator: ",")
         if isReversed {
             print("[" + reverseAns + "]")
         } else {
             print("[" + ans + "]")
         }
     }
 }
 */
/*
 회전하는 큐
 var input = readLine()!.split(separator: " ").map { Int($0)! }
 let N = input[0]

 var deque = Array(1...N)
 var targets = readLine()!.split(separator: " ").map { Int($0)! }
 var moveCount = 0

 for target in targets {
     if let index = deque.firstIndex(of: target) {
         let leftMove = index
         let rightMove = deque.count - index
         moveCount += min(leftMove, rightMove)

         if leftMove <= rightMove {
             for _ in 0..<leftMove {
                 deque.append(deque.removeFirst())
             }
         } else {
             for _ in 0..<rightMove {
                 deque.insert(deque.removeLast(), at: 0)
             }
         }
         deque.removeFirst()
     }
 }

 print(moveCount)
 */
/*
 struct Deque<T> {
     private var array = [T]()

     mutating func push_front(_ element: T) {
         array.insert(element, at: 0)
     }

     mutating func push_back(_ element: T) {
         array.append(element)
     }

     mutating func pop_front() -> T {
         return array.isEmpty ? -1 as! T : array.removeFirst()
     }

     mutating func pop_back() -> T {
         return array.isEmpty ? -1 as! T : array.removeLast()
     }

     func size() -> Int {
         return array.count
     }

     func empty() -> Int {
         return array.isEmpty ? 1 : 0
     }

     func front() -> T {
         return array.first ?? -1 as! T
     }

     func back() -> T {
         return array.last ?? -1 as! T
     }
 }

 func processCommands(_ commands: [String]) {
     var deque = Deque<Int>()

     for command in commands {
         let components = command.split(separator: " ")
         let operation = String(components[0])

         switch operation {
         case "push_front":
             if let value = Int(components[1]) {
                 deque.push_front(value)
             }
         case "push_back":
             if let value = Int(components[1]) {
                 deque.push_back(value)
             }
         case "pop_front":
             print(deque.pop_front())
         case "pop_back":
             print(deque.pop_back())
         case "size":
             print(deque.size())
         case "empty":
             print(deque.empty())
         case "front":
             print(deque.front())
         case "back":
             print(deque.back())
         default:
             break
         }
     }
 }

 let n = Int(readLine()!)!
 var commands = [String]()

 for _ in 0..<n {
     if let command = readLine() {
         commands.append(command)
     }
 }

 processCommands(commands)
 */
