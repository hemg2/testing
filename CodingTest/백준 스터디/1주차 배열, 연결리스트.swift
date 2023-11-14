//
//  1주차 배열, 연결리스트.swift
//  CodingTest
//
//  Created by 1 on 11/5/23.
//

/*

 배열
 알파벳 갯수
 var input = readLine()!
 var count: [Int] = Array(repeating: 0, count: 26)
 input = input.lowercased()

 for char in input {
     if let asciiValue = char.asciiValue {
        let index = Int(asciiValue) - 97
         count[index] += 1
     }
 }

 print(count.map{ String($0) }.joined(separator: " "))
 
 숫자 갯수
 var count = [Int](repeating: 0, count: 10)
 var a = 1

 for _ in 1...3 {
     if let input = readLine(), let number = Int(input) {
         a *= number
     }
 }
 while a > 0 {
     let b = a % 10
     count[b] += 1
     a /= 10
 }

 for i in 0...9 {
     print("\(count[i])")
 }
 
 방번호
 var input = readLine()!
 var count = [Int](repeating: 0, count: 10)
 var numbers = "0123456789"
 
 for i in input {
     if let a = numbers.firstIndex(of: i) {
         count[numbers.distance(from: numbers.startIndex, to: a)] += 1
     }
 }
 
 let count6 = count[6]
 let count9 = count[9]
 count[6] = (count6 + count9 + 1) / 2
 count[9] = count[6]
 
 print(count.max()!)
 
 두수의 합
 let x = Int(readLine()!)!
 var count = readLine()!.split(separator: " ").compactMap({Int($0)})
 let y = Int(readLine()!)!
 var result = 0
 var needNumber = Set<Int>()


 for i in count {
     if needNumber.contains(i) {
         result += 1
     }
      needNumber.insert(y - i)
 }
 print(result)
 
 개수 세기
 let x = Int(readLine()!)!
 var count = readLine()!.split(separator: " ").compactMap({Int($0)})
 let y = Int(readLine()!)!
 var result = 0
 
 for i in count {
 if y == i {
 result += 1
 }
 }
 print(result)
 11
 1 4 1 2 4 2 4 2 3 4 4
 2
 
 
 /*
  방배정
  let input = readLine()!
  let x = input.split(separator: " ").compactMap { Int($0) }
  let a = x[0] // 총인원
  let b = x[1] // 방인원
  var 남자 = [Int](repeating: 0, count: 6)
  var 여자 = [Int](repeating: 0, count: 6)
  
  for _ in 0..<a {
  let count = readLine()!.split(separator: " ").compactMap({Int($0)})
  let aa = count[0] // 성별
  let bb = count[1] // 학년
  
  if aa == 0 {
  여자[bb - 1] += 1
  } else {
  남자[bb - 1] += 1
  }
  }
  var result = 0
  for i in 남자 {
  result += (i + b - 1) / b
  }
  for i in 여자 {
  result += (i + b - 1) / b
  }
  print(result)
  */
 
 
 
 strfry   반대로 나오게 하는거
 //func isReversed(x: String, y: String) -> Bool {
 //    return x.sorted() == y.sorted()
 //}
 //
 //let testCaseCount = Int(readLine()!)!
 //
 //for _ in 1...testCaseCount {
 //    let input = readLine()!.lowercased().split(separator: " ").compactMap { String($0) }
 //
 //    if input.count == 2 {
 //        let x = input[0]
 //        let y = input[1]
 //
 //        if isReversed(x: x, y: y) {
 //            print("Possible")
 //        } else {
 //            print("Impossible")
 //        }
 //    }
 //}
 
 
  나머지 구하기
  var a = Set<Int>()

  for _ in 0...9 {
      let b = Int(readLine()!)! % 42
      a.insert(b)
  }

  let result = a.count
  print(result)

 /*
  평균 구하기
  let n = Int(readLine()!)!
  let a = readLine()!.split(separator: " ").map { Double($0)! }

  let max = a.max()!
  let b = a.map { $0 / max * 100 }
  print("\(b) 점수")

  var sum = 0.0
  for i in b {
      sum += Double(i)
  }

  let result = sum / Double(n)
  print(result)
  */


 /*
  바구니 바꾸기
  let nm = readLine()!.split(separator: " ").map { Int($0)! }
  let n = nm[0]
  let m = nm[1]

  var baskets = Array(1...n)

  for _ in 0..<m {
      let swap = readLine()!.split(separator: " ").map { Int($0)! }

      let i = swap[0] - 1
      let j = swap[1] - 1

  //    let temp = baskets[i]
      baskets[i...j].reverse()
  //    baskets[j] = temp
  }

  print(baskets.map { String($0) }.joined(separator: " "))

  공바꾸기
 let nm = readLine()!.split(separator: " ").map { Int($0)! }
 let n = nm[0]
 let m = nm[1]

 var baskets = Array(1...n)

 for _ in 0..<m {
     let swap = readLine()!.split(separator: " ").map { Int($0)! }

     let i = swap[0] - 1
     let j = swap[1] - 1

     let temp = baskets[i]
     baskets[i] = baskets[j]
     baskets[j] = temp
 }

 print(baskets.map { String($0) }.joined(separator: " "))
  */

 /*
  에너그램
 func minRemovalsForAnagram(_ word1: String, _ word2: String) -> Int {
     var count1: [Character: Int] = [:]
     var count2: [Character: Int] = [:]

     for char in word1 {
         count1[char, default: 0] += 1
     }

     for char in word2 {
         count2[char, default: 0] += 1
     }

     var removalCount = 0

     for (char, freq) in count1 {
 //        print("\(char) ...  \(freq) 1111 ")
         removalCount += max(0, freq - count2[char, default: 0])
     }

     for (char, freq) in count2 {
 //        print("\(char) ...  \(freq)  2222")
         removalCount += max(0, freq - count1[char, default: 0])
     }

     return removalCount
 }

 if let word1 = readLine(), let word2 = readLine() {
 //    print("\(word1) // \(word2)")
     let result = minRemovalsForAnagram(word1, word2)
     print(result)
 }
 */
*/
