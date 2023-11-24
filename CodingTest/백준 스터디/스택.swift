//
//  스택.swift
//  CodingTest
//
//  Created by 1 on 11/21/23.
//

import Foundation
/*
 탑
let n = Int(readLine()!)!
var 높이 = readLine()!.split(separator: " ").compactMap { Int($0) }
var n배열 = [Int](repeating: 0, count: n)

var stack = [Int]()

for i in 0..<n {
    print(i)
    while !stack.isEmpty && 높이[stack.last!] <= 높이[i] {
        //        print("\(stack)stack \(i) ii")
//                print("\(높이[stack.last!]) 높이 스택 <= \(높이[i]) 높이 i")
        stack.popLast()
    }
    
    if let last = stack.last {
        n배열[i] = last + 1
//        print("\(n배열[i])안에서")
    }
    stack.append(i)
//    print("\(n배열[i])밖에서 ")
}

print(n배열.map {String($0)}.joined(separator: " "))
 */
/*
 스택 수열 전수열?
 
 let n = Int(readLine()!)!
 var stack = [Int]()
 var result = [String]()
 var count = 1
 for _ in 0..<n {
 let num = Int(readLine()!)!
 while count <= num {
 stack.append(count)
 result.append("+")
 count += 1
 }
 
 let stackPop = stack.popLast()
 if stackPop == num {
 result.append("-")
 } else {
 result = ["NO"]
 break
 }
 }
 for 내가정답 in result {
 print(내가정답)
 }
 */
/*
 제로 안기준
 let result = Int(readLine()!)!
 var 결과 = [Int]()
 var sum = 0
 for _ in 0..<result {
 let input = Int(readLine()!)!
 
 if input == 0 {
 let last = 결과.removeLast()
 sum -= last
 } else {
 결과.append(input)
 sum += input
 }
 }
 print(sum)
 */

/*
 push X: 정수 X를 스택에 넣는 연산이다.
 pop: 스택에서 가장 위에 있는 정수를 빼고, 그 수를 출력한다. 만약 스택에 들어있는 정수가 없는 경우에는 -1을 출력한다.
 size: 스택에 들어있는 정수의 개수를 출력한다.
 empty: 스택이 비어있으면 1, 아니면 0을 출력한다.
 top: 스택의 가장 위에 있는 정수를 출력한다. 만약 스택에 들어있는 정수가 없는 경우에는 -1을 출력한다.
 스택 1
struct Stack<T> {
    private var container = [T]()
    
    var top: T? {
        return container.last
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
    
    mutating func pop() -> T? {
        return container.popLast()
    }
}

var stack = Stack<Int>()
let result = Int(readLine()!)!

for _ in 0..<result {
    let input = readLine()!.split(separator: " ")
    switch input[0] {
    case "push":
        if let value = Int(input[1]) {
            stack.push(value)
        }
    case "pop":
        if let pop = stack.pop() {
            print(pop)
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
    case "top":
        if let top = stack.top {
            print(top)
        } else {
            print(-1)
        }
    default:
        break
    }
}

 1 X: 정수 X를 스택에 넣는다. (1 ≤ X ≤ 100,000)
 2: 스택에 정수가 있다면 맨 위의 정수를 빼고 출력한다. 없다면 -1을 대신 출력한다.
 3: 스택에 들어있는 정수의 개수를 출력한다.
 4: 스택이 비어있으면 1, 아니면 0을 출력한다.
 5: 스택에 정수가 있다면 맨 위의 정수를 출력한다. 없다면 -1을 대신 출력한다.
 스택 2
struct Stack<T> {
    private var container = [T]()
    
    var top: T? {
        return container.last
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
    
    mutating func pop() -> T? {
        return container.popLast()
    }
}

var stack = Stack<Int>()
let result = Int(readLine()!)!

for _ in 0..<result {
    let input = readLine()!.split(separator: " ")
    switch input[0] {
    case "1":
        if let value = Int(input[1]) {
            stack.push(value)
        }
    case "2":
        if let pop = stack.pop() {
            print(pop)
        } else {
            print(-1)
        }
    case "3":
        print(stack.size)
    case "4":
        if stack.isEmpty {
            print(1)
        } else {
            print(0)
        }
    case "5":
        if let top = stack.top {
            print(top)
        } else {
            print(-1)
        }
    default:
        break
    }
}
 */
