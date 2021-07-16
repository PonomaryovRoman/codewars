import Foundation

// Find the unique number (Swift)
// https://www.codewars.com/kata/585d7d5adb20cf33cb000235/train/swift

// Task:
// func findUniq(_ arr: [Int]) -> Int

// MARK: Solution
// Changing 'Int' to 'Double'
func findUniq(_ arr: [Double]) -> Double {
    return arr.filter {arr.firstIndex(of: $0) == arr.lastIndex(of: $0)}.first! // OK
}

// MARK: - Solution 2 -
// Using generics:
/*
func findUniq<T: Equatable>(_ xs: [T]) -> T {
    return xs.first(where: { $0 != xs[xs[0] == xs[1] ? 0 : 2] })!
}
*/

// MARK: - Solution Test -

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.006) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(findUniq([ 1, 1, 1, 2, 1, 1 ]), 2)
        XCTAssertEqual(findUniq([ 0, 0, 0.55, 0, 0 ]), 0.55)
        XCTAssertEqual(findUniq([ 3, 10, 3, 3, 3 ]), 10)
    }
}

SolutionTest.defaultTestSuite.run()
