//
//  BFS.swift
//  CodingTest
//
//  Created by 1 on 12/12/23.
//

import Foundation
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
