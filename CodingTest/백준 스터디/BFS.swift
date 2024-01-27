//
//  BFS.swift
//  CodingTest
//
//  Created by 1 on 12/12/23.
//

import Foundation
/*
 유기농 배추
 let dx = [0, 1, 0, -1]
 let dy = [1, 0, -1, 0]

 func dfs(_ x: Int, _ y: Int, _ field: inout [[Int]], _ visited: inout [[Bool]], _ M: Int, _ N: Int) {
     visited[y][x] = true

     for i in 0..<4 {
         let nx = x + dx[i]
         let ny = y + dy[i]

         if nx >= 0 && nx < M && ny >= 0 && ny < N {
             if field[ny][nx] == 1 && !visited[ny][nx] {
                 dfs(nx, ny, &field, &visited, M, N)
             }
         }
     }
 }

 func countWorms(_ M: Int, _ N: Int, _ K: Int, _ cabbageLocations: [(Int, Int)]) -> Int {
     var field = Array(repeating: Array(repeating: 0, count: M), count: N)
     var visited = Array(repeating: Array(repeating: false, count: M), count: N)
     var worms = 0

     for loc in cabbageLocations {
         field[loc.1][loc.0] = 1
     }

     for y in 0..<N {
         for x in 0..<M {
             if field[y][x] == 1 && !visited[y][x] {
                 dfs(x, y, &field, &visited, M, N)
                 worms += 1
             }
         }
     }

     return worms
 }

 let t = Int(readLine()!)!

 for _ in 0..<t {
     let inputs = readLine()!.split(separator: " ").map { Int($0)! }
     let M = inputs[0], N = inputs[1], K = inputs[2]
     var cabbageLocations = [(Int, Int)]()

     for _ in 0..<K {
         let loc = readLine()!.split(separator: " ").map { Int($0)! }
         cabbageLocations.append((loc[0], loc[1]))
     }

     print(countWorms(M, N, K, cabbageLocations))
 }
 */
/*
 불!
 struct Queue<T> {
     private var array: [T?]
     private var head: Int = 0

     init() {
         array = []
     }

     var isEmpty: Bool {
         return head >= array.count
     }

     var count: Int {
         return array.count - head
     }

     mutating func enqueue(_ element: T) {
         array.append(element)
     }

     mutating func dequeue() -> T? {
         guard head < array.count, let element = array[head] else { return nil }
         
         array[head] = nil
         head += 1

         if array.count > 50 && head > array.count / 2 {
             array.removeFirst(head)
             head = 0
         }

         return element
     }
 }

 let input = readLine()!.split(separator: " ").map { Int($0)! }
 let n = input[0]
 let m = input[1]

 var maze = [[Character]]()
 var fireQueue = Queue<(Int, Int)>()
 var huQueue = Queue<(Int, Int, Int)>()
 var visited = Array(repeating: Array(repeating: false, count: m), count: n)

 for i in 0..<n {
     let row = Array(readLine()!)
     maze.append(row)
     for j in 0..<m {
         if row[j] == "J" {
             huQueue.enqueue((i, j, 0))
             visited[i][j] = true
         } else if row[j] == "F" {
             fireQueue.enqueue((i, j))
         }
     }
 }

 func bfs() -> String {
     let dx = [0, 1, 0, -1]
     let dy = [1, 0, -1, 0]

     while !huQueue.isEmpty {
         for _ in 0..<fireQueue.count {
             let (fx, fy) = fireQueue.dequeue()!
             for d in 0..<4 {
                 let nx = fx + dx[d], ny = fy + dy[d]
                 if 0 <= nx && nx < n && 0 <= ny && ny < m && maze[nx][ny] == "." {
                     maze[nx][ny] = "F"
                     fireQueue.enqueue((nx, ny))
                 }
             }
         }
         
         for _ in 0..<huQueue.count {
             let (hx, hy, time) = huQueue.dequeue()!
             if hx == 0 || hx == n - 1 || hy == 0 || hy == m - 1 {
                 return String(time + 1)
             }
             for d in 0..<4 {
                 let nx = hx + dx[d], ny = hy + dy[d]
                 if 0 <= nx && nx < n && 0 <= ny && ny < m && maze[nx][ny] == "." && !visited[nx][ny] {
                     visited[nx][ny] = true
                     huQueue.enqueue((nx, ny, time + 1))
                 }
             }
         }
     }
     return "IMPOSSIBLE"
 }
 print(bfs())
 */
/*
 미로 탐색
 let input = readLine()!.split(separator: " ").map { Int(String($0))! }
 let n = input[0]
 let m = input[1]
 var array = [[Int]]()

 for _ in 0..<n {
     let a = readLine()!.map { Int(String($0))! }
     array.append(a)
 }

 func bfs(_ x: Int, _ y: Int) -> Int {
     let fx = [0, 1, -1, 0]
     let fy = [1, 0, 0, -1]
     
     var idx = 0
     var queue = [(x, y, distance: 1)]
     
     while queue.count > idx {
         let (x, y, distance) = queue[idx]
         idx += 1
         
         if x == n - 1 && y == m - 1 {
 //             print("\(distance)=거리")
             return distance
         }
         
         for i in 0..<4 {
             let nx = x + fx[i]
             let ny = y + fy[i]
             
             if (0..<n) ~= nx && (0..<m) ~= ny && array[nx][ny] == 1 {
                 array[nx][ny] = 0
                 queue.append((nx,ny, distance + 1))
             }
         }
     }
     return 0
 }
 print(bfs(0, 0))
 */
/*
 그림
 let input = readLine()!.split(separator: " ").map { Int(String($0))! }
 let n = input[0]
 let m = input[1]
 var array = [[Int]]()

 for _ in 0..<n {
     let a = readLine()!.split(separator: " ").map { Int($0)! }
     array.append(a)
 }

 func bfs(_ x: Int, _ y: Int) -> Int {
     var result = 1
     array[x][y] = 0
     let fx = [0, 1, -1, 0]
     let fy = [1, 0, 0, -1]
     
     var idx = 0
     var queue = [(x, y)]
     
     while queue.count > idx {
         let (x, y) = queue[idx]
         idx += 1
         
         for i in 0..<4 {
             let nx = x + fx[i]
             let ny = y + fy[i]
             
             if (0..<n) ~= nx && (0..<m) ~= ny && array[nx][ny] == 1 {
                 array[nx][ny] = 0
                 queue.append((nx,ny))
                 result += 1
             }
         }
     }
     return result
 }
 var maxw = 0
 var pict = 0
 for i in 0..<n {
     for j in 0..<m {
         if array[i][j] == 1 {
             let bfs = bfs(i, j)
             pict += 1
             maxw = max(maxw, bfs)
         }
     }
 }

 print(pict)
 print(maxw)
 */
