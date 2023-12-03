//
//  덱.swift
//  CodingTest
//
//  Created by 1 on 12/3/23.
//

import Foundation

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
