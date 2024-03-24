## Array / String
1. https://leetcode.com/problems/merge-strings-alternately/description/?envType=study-plan-v2&envId=leetcode-75
```swift
class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
    let a = Array(word1)
    let b = Array(word2)
    var result = ""
    let maxNumber = max(a.count, b.count)
    
    for index in 0..<maxNumber {
        if index < a.count {
            result += String(a[index])
        }
        if index < b.count {
            result += String(b[index])
        }
    }
    
    return result
 }
}
```
3. https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/description/?envType=study-plan-v2&envId=leetcode-75
```swift
class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var result = [Bool]()
    var total = candies.max()
    
    for i in candies {
        if i + extraCandies >= total! {
            result.append(true)
        } else {
            result.append(false)
        }
    }
    
    return result
 }
}
```

4. https://leetcode.com/problems/can-place-flowers/?envType=study-plan-v2&envId=leetcode-75
```swift
class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    // let result : Bool = false
    var n = n
    var flowerbed = flowerbed
    for i in 0..<flowerbed.count {
        if flowerbed[i] == 0 && (i == 0 || flowerbed[i - 1] == 0) && (i == flowerbed.count - 1 || flowerbed[i + 1] == 0) {
            flowerbed[i] = 1
            n -= 1
        }
        if n <= 0 {
            return true
        }
    }
    return false
}
}
```
---
Example 1:
Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]
```swift
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zero = 0
        
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[zero] = nums[i]
                if i != zero {
                    nums[i] = 0
            }
             zero += 1   
            }
        }
    }
}
```
---


5
```swift
class Solution {
    func reverseVowels(_ s: String) -> String {
    var result = Array(s)
    let mo: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var left = 0
    var right = result.count - 1
    
    while left < right {
        while left < right && !mo.contains(result[left]) {
            left += 1
        }
        while left < right && !mo.contains(result[right]) {
            right -= 1
        }
        if left < right {
            result.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
    return String(result)
}
}
```



```swift
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty { return true }
        var sIndex = s.startIndex
        for i in t {
            if i == s[sIndex] {
            sIndex = s.index(after: sIndex)
            if sIndex == s.endIndex {
                return true
            }
        }
    }
    return false
    }
}
```
