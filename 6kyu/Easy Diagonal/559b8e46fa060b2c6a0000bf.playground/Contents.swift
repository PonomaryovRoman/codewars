import Foundation

// Easy Diagonal
// https://www.codewars.com/kata/559b8e46fa060b2c6a0000bf/train/swift

func diagonal(_ n: Int, _ p: Int) -> Int {
    var sum = 0, num = 1
    for i in (0...n-p) {
        num = i == 0 ? 1 : num * (p + i) / i
        sum = sum + num
    }
    return sum // OK
}
