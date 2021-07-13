import Foundation

// Grasshopper - Summation
// https://www.codewars.com/kata/55d24f55d7dd296eb9000030/train/swift

func summation(_ n: Int) -> Int {
    return (1 + n) * n / 2 // OK
}

// MARK: - Solution 2 -
// func summation(_ n: Int) -> Int {
//     return (1...n).reduce(0){$0+$1}
// }

// MARK: - Solution 3 -
// func summation(_ n: Int) -> Int {
//     var answer = 0
//     for number in 1...n { answer = answer + number }
//     return answer
// }

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(summation(1), 1)
        XCTAssertEqual(summation(8), 36)
        XCTAssertEqual(summation(22), 253)
        XCTAssertEqual(summation(100), 5050)
        XCTAssertEqual(summation(213), 22791)
    }
}

SolutionTest.defaultTestSuite.run()
