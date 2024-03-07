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
