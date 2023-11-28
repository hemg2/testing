//
//  시간.swift
//  CodingTest
//
//  Created by 1 on 11/19/23.
//

import Foundation

/*
 시간 관련
 let nm = readLine()!.split(separator: " ").map { Int($0)! }
 let h = nm[0]
 let m = nm[1]
 var result = [Int]()

 var totalH = h * 60 + m
 //let totalM = max(totalH - 45, 0)
 totalH -= 45
 if totalH < 0 {
     totalH += (24 * 60)
 }

 var a = totalH / 60
 var b = totalH % 60
 print("\(a) \(b)")
 //result.append(a)
 //result.append(b)
 //print(result.map {String($0)}.joined(separator: " "))
 */


/* 보석?
 //func solution(_ gems:[String]) -> [Int] {
 //    var result: [Int] = [Int]()
 //    var gemSet: Set<String> = Set(gems)
 //    var gemCount = gemSet.count
 //    var left = 0
 //    var right = 0
 //    var gemDict: [String: Int] = [:]
 //    var intMax = Int.max
 //
 //    while right < gems.count {
 //        let gem = gems[right]
 //
 //        if let count = gemDict[gem] {
 //            gemDict[gem] = count + 1
 //        } else {
 //            gemDict[gem] = 1
 //        }
 //
 //        while gemDict.keys.count == gemCount {
 //            if right - left < intMax {
 //                intMax = right - left
 //                result = [left + 1, right + 1]
 //            }
 //
 //            let leftGem = gems[left]
 //
 //            if let count = gemDict[leftGem] {
 //                gemDict[leftGem] = count - 1
 //
 //                if count - 1 == 0 {
 //                    gemDict.removeValue(forKey: leftGem)
 //                }
 //            }
 //            left += 1
 //        }
 //        right += 1
 //    }
 //    return result
 //}
 //print(solution(["DIA", "RUBY", "RUBY", "DIA", "DIA", "EMERALD", "SAPPHIRE", "DIA"]))
 */
