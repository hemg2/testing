//
//  큐.swift
//  CodingTest
//
//  Created by 1 on 11/29/23.
//

import Foundation
/*
 push X: 정수 X를 큐에 넣는 연산이다.
 pop: 큐에서 가장 앞에 있는 정수를 빼고, 그 수를 출력한다. 만약 큐에 들어있는 정수가 없는 경우에는 -1을 출력한다.
 size: 큐에 들어있는 정수의 개수를 출력한다.
 empty: 큐가 비어있으면 1, 아니면 0을 출력한다.
 front: 큐의 가장 앞에 있는 정수를 출력한다. 만약 큐에 들어있는 정수가 없는 경우에는 -1을 출력한다.
 back: 큐의 가장 뒤에 있는 정수를 출력한다. 만약 큐에 들어있는 정수가 없는 경우에는 -1을 출력한다.
 큐 1
 
 struct Queue<T> {
 private var container = [T]()
 
 mutating func pop() -> T? {
 return container.isEmpty ? -1 as? T : container.removeFirst()
 }
 
 var size: Int {
 container.count
 }
 
 var isEmpty: Bool {
 container.isEmpty
 }
 
 mutating func push(_ element: T) {
 container.append(element)
 }
 
 mutating func front() -> T? {
 return container.first
 }
 
 mutating func back() -> T? {
 return container.last
 }
 }
 
 var stack = Queue<Int>()
 let result = Int(readLine()!)!
 
 for _ in 0..<result {
 let input = readLine()!.split(separator: " ")
 switch input[0] {
 case "push":
 if let value = Int(input[1]) {
 stack.push(value)
 }
 case "back":
 if let back = stack.back() {
 print(back)
 } else {
 print(-1)
 }
 case "front":
 if let front = stack.front() {
 print(front)
 } else {
 print(-1)
 }
 case "size":
 print(stack.size)
 case "empty":
 if stack.isEmpty {
 print(1)
 } else {
 print(0)
 }
 case "pop":
 if let top = stack.pop() {
 print(top)
 } else {
 print(-1)
 }
 default:
 break
 }
 }
 */
