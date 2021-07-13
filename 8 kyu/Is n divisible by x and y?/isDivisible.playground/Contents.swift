import Foundation

// Is n divisible by x and y?
// https://www.codewars.com/kata/5545f109004975ea66000086/train/swift

func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    return n.isMultiple(of: x) && n.isMultiple(of: y) // 👍
}

// MARK: - Solution 2 -
// func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
//     return n % x == 0 && n % y == 0
// }

// MARK: - Solution 3 -
// func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
//     return n % x + n % y == 0
// }

import XCTest

//      Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(isDivisible(3, 3, 4), false)
        XCTAssertEqual(isDivisible(12, 3, 4), true)
        XCTAssertEqual(isDivisible(8, 3, 4), false)
        XCTAssertEqual(isDivisible(48, 3, 4), true)
        XCTAssertEqual(isDivisible(100, 5, 10), true)
        XCTAssertEqual(isDivisible(100, 5, 3), false)
        XCTAssertEqual(isDivisible(4, 4, 2), true)
        XCTAssertEqual(isDivisible(5, 2, 3), false)
        XCTAssertEqual(isDivisible(17, 17, 17), true)
        XCTAssertEqual(isDivisible(17, 1, 17), true)
    }
}

SolutionTest.defaultTestSuite.run()
