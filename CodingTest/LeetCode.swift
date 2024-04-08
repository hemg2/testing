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
