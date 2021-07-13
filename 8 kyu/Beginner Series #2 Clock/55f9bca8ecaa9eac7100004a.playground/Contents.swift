import Foundation

// Beginner Series #2 Clock
// https://www.codewars.com/kata/55f9bca8ecaa9eac7100004a/train/swift

func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    return (s + m * 60 + h * 3600) * 1000 // OK
}

// MARK: - Solution 2 -
// func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
//     return (h * 3600000) + (m * 60000) + (s * 1000)
// }

// MARK: - Solution 3 -
// func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
//     return (h * 60 * 60 + m * 60 + s) * 1000
// }

// MARK: - Solution 4 -
// func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
//     return (s + ((h * 60) + m) * 60) * 1000
// }

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(past(0, 1, 1), 61000)
        XCTAssertEqual(past(1, 1, 1), 3661000)
        XCTAssertEqual(past(0, 0, 0), 0)
        XCTAssertEqual(past(1, 0, 1), 3601000)
        XCTAssertEqual(past(1, 0, 0), 3600000)
    }
}

SolutionTest.defaultTestSuite.run()
