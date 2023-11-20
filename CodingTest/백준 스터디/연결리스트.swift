//
//  연결리스트.swift
//  CodingTest
//
//  Created by 1 on 11/16/23.
//

/*
 백준
요세푸스
 let input = readLine()!.split(separator: " ").map { Int(String($0))! }
 let n = input[0]
 let k = input[1]
 var a = [Int]()
 var b = Array(1...n)
 var c = 0 // 위치
 while !b.isEmpty {
 //    print(b)
 //    print(c)
      //  2 % 7
     c = (c + k - 1) % b.count
     let remove = b.remove(at: c)
     
     a.append(remove)
 }
  
  풍선 터트리기
  
 let n = Int(readLine()!)!
 var k = readLine()!.split(separator: " ").map { Int(String($0))! }

 var result = [Int]()
 var c = 0 // 위치
 var 풍선카운트 = Array(1...n)
 while !풍선카운트.isEmpty {
     let move = k[c % k.count]
 //    print(move)
     let b = k.remove(at: c % k.count)
 //    print(b)
     result.append(풍선카운트.remove(at: c % 풍선카운트.count))
 //    print(result)
     
     guard !k.isEmpty else { break }
     
     if move > 0 {
         c = (c + b - 1) % max(1, k.count)
     } else {
         c += b
         if c < 0 {
             c = (c % k.count + k.count) % k.count
         }
     }
 }

 print(result.map { String($0) }.joined(separator: " "))
  
 */


/*
  코드잇?
  class Solution {
      func deleteNode(_ node: ListNode?) {
          guard let nodeToDelete = node,
                let nextNode = nodeToDelete.next else {
              return
          }
          
          nodeToDelete.val = nextNode.val
          nodeToDelete.next = nextNode.next
      }
  }

  class Solution {
      func reverseList(_ head: ListNode?) -> ListNode? {
          var current = head
          var tail: ListNode? = nil

          while current != nil {
              let next = current!.next
              current!.next = tail
              tail = current
              current = next
          }
          return tail
      }
  }
  
  //public class ListNode {
  //      public var val: Int
  //      public var next: ListNode?
  //      public init() { self.val = 0; self.next = nil; }
  //      public init(_ val: Int) { self.val = val; self.next = nil; }
  //      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  //}

  //class Solution {
  //    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
  //        var arr = [Int]()
  //        var current = head
  //
  //        while current != nil {
  //            if current?.val != val {
  //                arr.append(current!.val)
  //            }
  //            current = current!.next
  //        }
  //
  //        var newNode: ListNode? = nil
  //        var tail: ListNode? = nil
  //
  //        for i in arr {
  //            let new2 = ListNode(i)
  //            if newNode == nil {
  //                newNode = new2
  //                tail = new2
  //            } else {
  //                tail?.next = new2
  //                tail = new2
  //            }
  //        }
  //
  //        return newNode
  //    }
  //}

  //class Solution {
  //    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
  //        var arrS = Set<Int>()
  //        var current = head
  //        var p: ListNode? = nil
  //
  //        while current != nil {
  //            if arrS.contains(current!.val) {
  //                arrS.insert(current!.val)
  //                p = current
  //            } else {
  //                p?.next = current?.next
  //            }
  //            current = current!.next
  //        }
  //
  //        return head
  //    }
  //}

  //class Solution {
  //    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
  //       var arr = [Int]()
  //       var current = head
  //
  //       while current != nil {
  //           arr.append(current!.val)
  //           current = current!.next
  //       }
  //        for i in 0..<(right - left + 1) / 2 {
  //            //          4     2     3   /  2
  ////            print("\(i) i")
  //           let temp = arr[left + i - 1]
  //                     //     1
  //            arr[left + i - 1] = arr[right - i - 1]
  //            //   1                      3
  //           arr[right - i - 1] = temp
  //            //  3
  //       }
  //       current = head
  //
  //       for i in 0..<arr.count {
  //           current?.val = arr[i]
  //           current = current?.next
  //       }
  //       return head
  //    }
  //}
 */
