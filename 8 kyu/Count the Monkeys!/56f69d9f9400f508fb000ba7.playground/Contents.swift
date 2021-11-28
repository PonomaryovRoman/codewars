import Foundation

// Count the Monkeys!
// https://www.codewars.com/kata/56f69d9f9400f508fb000ba7/train/swift

func monkeyCount(_ n: Int) -> [Int] {
    return n > 0 ? [Int](1...n) : []
} // OK

// MARK: - Solution 2 -

/*
func monkeyCount(_ n: Int) -> [Int] {
    return stride(from: 1, through: n, by: 1).sorted()
}
*/

// MARK: - Solution 3 -

/*
func monkeyCount(_ n: Int) -> [Int] {
    (1...n).sorted()
}
*/

// MARK: - Solution 4 -

/*
func monkeyCount(_ n: Int) -> [Int] {
    return (1...n).map{$0}
}
*/
