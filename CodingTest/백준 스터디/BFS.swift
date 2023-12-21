//
//  BFS.swift
//  CodingTest
//
//  Created by 1 on 12/12/23.
//

import Foundation

/*
 let input = readLine()!.split(separator: " ").map { Int($0)! }
 let n = input[0]
 let m = input[1]

 var maze = [[Character]]()
 var fireQueue = [(Int, Int)]()
 var huQueue = [(Int, Int, Int)]()
 var visited = Array(repeating: Array(repeating: false, count: m), count: n)

 for i in 0..<n {
     let row = Array(readLine()!)
     maze.append(row)
     for j in 0..<m {
         if row[j] == "J" {
             huQueue.append((i, j, 0))
             visited[i][j] = true
         } else if row[j] == "F" {
             fireQueue.append((i, j))
         }
     }
 }

 func bfs() -> String {
     let dx = [0, 1, 0, -1]
     let dy = [1, 0, -1, 0]

     while !huQueue.isEmpty {
         for _ in 0..<fireQueue.count {
             let (fx, fy) = fireQueue.removeFirst()

             for d in 0..<4 {
                 let nx = fx + dx[d], ny = fy + dy[d]
                 if 0 <= nx && nx < n && 0 <= ny && ny < m && maze[nx][ny] == "." {
                     maze[nx][ny] = "F"
                     fireQueue.append((nx, ny))
                 }
             }
         }

         for _ in 0..<huQueue.count {
             let (hx, hy, time) = huQueue.removeFirst()

             if hx == 0 || hx == n - 1 || hy == 0 || hy == m - 1 {
                 return String(time + 1)
             }

             for d in 0..<4 {
                 let nx = hx + dx[d], ny = hy + dy[d]
                 if 0 <= nx && nx < n && 0 <= ny && ny < m && maze[nx][ny] == "." && !visited[nx][ny] {
                     visited[nx][ny] = true
                     huQueue.append((nx, ny, time + 1))
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
