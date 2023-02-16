//
//  2.15~.swift
//  CodingTest
//
//  Created by 1 on 2023/02/15.
//

import Foundation


/*
 
 
 
 // 가운데 글자 가져오기
 //func solution(_ s:String) -> String {
 //    let mini = s.count / 2  카운트니깐 중앙을 지정한다.
 //    var a = String()
 //
 //    if s.count % 2 == 1 {
 //        a = "\(s[s.index(s.startIndex, offsetBy: mini)])"  첫번째 인덱스로부터 가운데 인덱스에 접근한다    홀수일경우
 //    } else {
 //        a = "\(s[s.index(s.startIndex, offsetBy: mini-1)])" + "\(s[s.index(s.startIndex, offsetBy: mini)])"  짝수일경우 가운데 -1 이랑 가운데
 //    }
 //
 //    return a
 //}
 //print(solution("abcde"))
 
 
 // 나누어 떨어지는 숫자 배열  포문 밖에서 하니됬다 왜? 자꾸 -1들이 붙는 이유를 알아야했으니 포문이 반복되서 -1이 자꾸 붙었다
 func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
     var a : [Int] = []
     for i in arr {
         if i % divisor == 0 {
             a.append(i)
         }
     }
         if a == [] {
             a.append(-1)
         }
     return a.sorted()
 }
 print(solution([5, 9, 7, 10], 5))
 print(solution([2, 36, 1, 3], 1))
 print(solution([3, 2, 6], 10))
 print(solution([3, 2, 6], 5))
 print(solution([3, 2, 4], 2))
 print(solution([7, 5, 9, 10], 5))
 
 
 
 // 콜라츠 추측
 //func solution(_ num:Int) -> Int {
 //    var a = num
 //    var b = 0
 //    while a != 1 && b <= 500 {
 //        if a % 2 == 0 {
 //           a = a / 2
 //        } else if num % 2 <= 1 {
 //         a = a * 3 + 1
 //        }
 //        b += 1
 //    }
 //   와일문 만들었지만 결과가 내가 원하는대로 안나와서 결국 답을 봤다 그래도 이해가어려웠고 결국 다시 풀다보니 어쩌다가 풀렸다...
 //   와일문을 한번더 알아보기도 해야겠지만 한번더 써볼 문제를 풀어봐야겠다
 //    if b >= 500 {
 //        return -1
 //    }
 //
 //    return b
 //}
 //print(solution(6))
 //print(solution(16))
 //print(solution(15))
 //print(solution(5))
 //print(solution(626331))
 
 
 */
