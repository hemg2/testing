//
//  재귀.swift
//  CodingTest
//
//  Created by 1 on 12/31/23.
//

import Foundation
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
