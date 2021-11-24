import Foundation

// Pyramid Array
// https://www.codewars.com/kata/515f51d438015969f7000013/train/swift

func pyramid(_ n: Int) -> [[Int]] {
    return n <= 0 ? [] : (1...n).map { .init(repeating: 1, count: $0) } // OK
}

// Solution 2:
/*
func pyramid(_ n: Int) -> [[Int]] {
    return (0..<n).map { Array(repeating: 1, count: $0+1) }
}
*/
