//
//  File.swift
//  TestProgrammers
//
//  Created by Jakyung Yoon on 2022/08/17.
//

import Foundation
class Programmers {
    
    // MARK - 두 개 뽑아서 더하기
    static func solution(_ numbers:[Int]) -> String {
        var result:Set<Int> = []
        
        for (i,_num) in numbers.enumerated() {
            for (j,_numb) in numbers.enumerated() {
                if i != j {
                    result.insert(_num + _numb)
                }
            }
        }
        
        return "\(Array(result).sorted())"
    }
    
    // 2016
    func solution(_ a:Int, _ b:Int) -> String {
        
        return ""
    }
    
    // 음양 더하기
    static func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
        var result = 0
        for (i,_abslutes) in absolutes.enumerated() {
            result += (!signs[i] ? -(_abslutes) : _abslutes)
        }
        return result
    }
    
    // 내적
    static func solution(_ a:[Int], _ b:[Int]) -> Int {
        var result = 0
        for (i,_a) in a.enumerated() {
            result += ( _a + b[i])
        }
        
        return result
    }
    
    // 없는 수 더하기
    func solution(_ numbers:[Int]) -> Int {
        let basic: Set<Int> = [1,2,3,4,5,6,7,8,9,0]
        let nonexist = Array(basic.subtracting(numbers))
        var result = 0
        nonexist.forEach { _nonexist in
            result += _nonexist
        }
        return result
    }
    
    
    // 신고 결과 받기
    static func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
        let _report = Array(Set(report))
        
        let value = _report.map { i in
            return String(i.split(separator: " ").last ?? "")
        }
        
        let stoped_id = id_list.filter ({ _id in
           return value.filter({ $0 == _id }).count == k
        })
        
        
        
        return []
    }
    
    // 최소 직사각형
    static func solution(_ sizes:[[Int]]) -> Int {
        let _sortedSizes = sizes.map { size in
            return size.sorted(by: >)
        }
        print("_sortedSizes",_sortedSizes)
        let maxWidth = _sortedSizes.max (by: {
            return $0.first ?? 0 < $1.first ?? 0
        })?.first ?? 0
        
        let maxHeight = _sortedSizes.max(by: {
            return $0.last ?? 0 < $1.last ?? 0
        })?.last ?? 0
        
        print("maxWidth",maxWidth, maxHeight)
        return maxWidth * maxHeight
    }
    
    // 로또의 최고 순위와 최저 순위
    static func solution(lottos:[Int], _ win_nums:[Int]) -> String {
        let minWinCount = win_nums.filter({ lottos.contains($0) }).count
        
        print("minWinCount", win_nums.filter({ lottos.contains($0) }))
        let maxWin = minWinCount + lottos.filter({ $0 == 0 }).count
        print("maxWinCount",lottos.filter({ $0 == 0 }))
        let minWinning = (7 - minWinCount) < 6 ? (7 - minWinCount) : 6
        let maxWinning = (7 - maxWin) < 6 ? (7 - maxWin) : 6
        return "\([maxWinning,minWinning])"
    }
    
    // 문자열을 정수로 바꾸기
    static func solution(_ s:String) -> Int {
        return Int(s) ?? 0
    }
    
    // 정수 내림차순으로 배치하기
    static func solution(_ n:Int64) -> Int64 {
        let stringN = String(n)
        let sorted = stringN.sorted(by: > ).map({ i -> String in
            return String(i)
        })
        print("sorted",sorted)
        return Int64(sorted.joined()) ?? 0
    }
    
    // 평균 구하기
   static func solution(arr:[Int]) -> Double {
       var result: Double = 0.0
       
       // 고차함수 reduce가 있음 사용하는 법 공부하기
       arr.forEach({ result += Double($0) })
       return Double(result / Double(arr.count))
    }
    
    // 행렬의 덧셈
    func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
        
        // zip 공부하기
        return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
    }
    
    //x만큼 간격이 있는 n개의 숫자
    func solution(_ x:Int, _ n:Int) -> [Int64] {
        var result: [Int64] = []
        for _ in  0..<n {
            result.append( Int64((result.last ?? 0) + Int64(x)))
        }
        return result
    }
    
    // 실패율
    func solution(_ N: Int, _ stages:[Int]) -> [Int] {
        
        
        return []
    }
}
