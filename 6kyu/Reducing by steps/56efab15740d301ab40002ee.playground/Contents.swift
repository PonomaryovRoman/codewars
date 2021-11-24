import Foundation

// Reducing by steps
// https://www.codewars.com/kata/56efab15740d301ab40002ee/train/swift

func som(_ x: Int, _ y: Int) -> Int { x + y }
func maxi(_ x: Int, _ y: Int) -> Int { x > y ? x : y }
func mini(_ x: Int, _ y: Int) -> Int { x < y ? x : y }
func lcmu(_ a: Int, _ b: Int) -> Int { abs(a * b / gcdi(a, b)) }

func gcdi(_ x: Int, _ y: Int) -> Int {
    var a = abs(x), b = abs(y)
    while a != 0, b != 0 { a > b ? (a %= b) : (b %= a) }
    return a + b
}

func operArray(_ f: (Int, Int) -> (Int), _ a: [Int], _ iniVal: Int) -> [Int] {
    var arr = a; arr[0] = f(a[0], iniVal)
    (1..<a.count).forEach { arr[$0] = f(arr[$0], arr[$0 - 1]) }
    return arr
}
