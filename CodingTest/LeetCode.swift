//
//  LeetCode.swift
//  CodingTest
//
//  Created by Hemg on 3/31/24.
//

import Foundation

/*
 150 - 1
 func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
     for i in 0..<n {
         nums1[m + i] = nums2[i]
     }
     nums1.sort()
 }
 
 150 - 2
 func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
         var result = 0

         for i in 0..<nums.count {
             if nums[i] != val {
                 nums[result] = nums[i]
                 result += 1
             }
         }
         return result
     }
 
 150 - 3
 func removeDuplicates(_ nums: inout [Int]) -> Int {
     var result = 1
     
     for i in 1..<nums.count {
         if nums[i] != nums[i-1] {
             nums[result] = nums[i]
             result += 1
         }
     }
     return result
   }
 
 150 - 로마 문자
 func romanToInt(_ s: String) -> Int {
        var result = 0
        let characters = Array(s)
        var lastValue = 0
       let romanDict: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    for character in characters.reversed() {
        let value = romanDict[character]!
 
 
 150 - 마지막 문자열 길이
 
 func lengthOfLastWord(_ s: String) -> Int {
    var result = 0
    var isWord = false
    
    for i in s.reversed() {
        if i == " " {
            if isWord {
                break
            }
        } else {
            isWord = true
            result += 1
        }
    }
    
    return result
    }
 
 150 - 공통문자 찾아서 반환
 func longestCommonPrefix(_ strs: [String]) -> String {
     var prefix = strs[0]
     
     for i in strs {
         while !i.hasPrefix(prefix) {
             prefix.removeLast()
             if prefix.isEmpty { return ""}
         }
     }
     
     return prefix
    }
 
 
 스트링 1번
 //func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
 //    var result = 0
 //
 //    for i in 0..<nums.count {
 //        if nums[i] != val {
 //            nums[result] = nums[i]
 //            result += 1
 //        }
 //    }
 //    return result
 //}

 //func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
 //    for i in 0..<n {
 //        nums1[m + i] = nums2[i]
 //        print("\(nums1)--\(m)m \(i)i")
 //    }
 //    nums1.sort()
 //}
 //
 //var number = [1, 2, 3, 0, 0, 0]
 //merge(&number, 3, [2, 5, 6], 3)
 //print(number)
 */









/*
 디피 1
 
 func climbStairs(_ n: Int) -> Int {
     if n <= 2 { return n }

     var first = 1
     var second = 2
     
     for _ in 3...n {
         let third = first + second
         first = second
         second = third
     }
     return second
     }
 
 */
