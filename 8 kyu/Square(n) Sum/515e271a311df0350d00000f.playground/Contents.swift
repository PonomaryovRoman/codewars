import Foundation

// Square(n) Sum
// https://www.codewars.com/kata/515e271a311df0350d00000f/train/swift

func squareSum(_ vals: [Int]) -> Int {
    return vals.map{$0 * $0}.reduce(0, +)
}

// MARK: - Solution 2 -
// func squareSum(_ vals: [Int]) -> Int {
//     return vals.reduce(0) { $0 + $1 * $1 }
// }

// MARK: - Solution 3 -
// func squareSum(_ vals: [Int]) -> Int {
//     return vals.reduce(0, {$0 + $1 * $1})
// }

// MARK: - Solution Test -

import XCTest

// Executed 4 tests, with 0 failures (0 unexpected) in 0.007 (0.009) seconds

class SolutionTest: XCTestCase {
    func testNoValue() {
        XCTAssertEqual(squareSum([]), 0)
    }
    
    func testOneValue() {
        XCTAssertEqual(squareSum([1]), 1)
    }
    
    func testTwoValues() {
        XCTAssertEqual(squareSum([1, 2]), 5)
        XCTAssertEqual(squareSum([3, 4]), 25)
        XCTAssertEqual(squareSum([-3, -4]), 25)
    }
    
    func testThreeValues() {
        XCTAssertEqual(squareSum([1, 2, 3]), 14)
        XCTAssertEqual(squareSum([5, 3, 4]), 50)
        XCTAssertEqual(squareSum([-3, -4, 0]), 25)
    }
}

SolutionTest.defaultTestSuite.run()
