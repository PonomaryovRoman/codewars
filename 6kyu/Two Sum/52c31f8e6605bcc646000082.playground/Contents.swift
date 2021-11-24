import Foundation

// Two Sum
// https://www.codewars.com/kata/52c31f8e6605bcc646000082/train/swift

class Solution {
    static func twosum(numbers: [Double], target: Double) -> [Int] {
        for i in 0..<(numbers.count - 1) {
            for k in (i+1)..<numbers.count where numbers[i] + numbers[k] == target {
                return [i,k]
            }
        }
        return []
    }
}

// Solution 2:
/*
class Solution {
    static func twosum(numbers: [Double], target: Double) -> [Int] {
        var pairs = [Double:Double]()
        for (i,n) in numbers.enumerated() {
            if let pi = pairs[target - n] {
                return [Int(pi),i]
            } else {
                pairs[Double(n)] = Double(i)
            }
        }
        return []
    }
}
*/
