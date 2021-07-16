import Foundation

// Multiples of 3 or 5 (Swift)
// https://www.codewars.com/kata/514b92a657cdc65150000006/train/swift

func solution(_ num: Int) -> Int {
    return (0..<num).filter({$0 % 3 == 0 || $0 % 5 == 0}).reduce(0, +) // OK
}

// MARK: - Solution 2 -
/*
func solution(_ num: Int) -> Int {
    return (0..<num).filter {($0 % 3 * $0 % 5) == 0}.reduce(0, +)
}
*/

import XCTest

// Executed 3 tests, with 0 failures (0 unexpected) in 0.012 (0.014) seconds

class SolutionTest: XCTestCase {
    func test0() {
        XCTAssertEqual(solution(10), 23)
    }
    func test1() {
        XCTAssertEqual(solution(20), 78)
    }
    func test2() {
        XCTAssertEqual(solution(200), 9168)
    }
}

SolutionTest.defaultTestSuite.run()
