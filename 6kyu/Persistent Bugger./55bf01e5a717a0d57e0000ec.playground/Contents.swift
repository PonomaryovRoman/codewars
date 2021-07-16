import Foundation

// Persistent Bugger. (Swift)
// https://www.codewars.com/kata/55bf01e5a717a0d57e0000ec/train/swift

func persistence(for num: Int) -> Int {
    let digs: [Int] = "\(num)".compactMap{ Int("\($0)") }
    return digs.count == 1 ? 0 : 1 + persistence(for: digs.reduce(1, *)) // OK
}

// MARK: - Solution 2 -
/*
func persistence(for num: Int) -> Int {
    return num < 10 ? 0 : 1 + persistence(for: "\(num)".reduce( 1, {$0 * Int("\($1)")!} ) )
}
*/

// MARK: - Solution 3 -
/*
func persistence(for num: Int) -> Int {
    guard num > 9 else { return 0 }
    return persistence(for: "\(num)".compactMap{$0.wholeNumberValue}.reduce(1, *)) + 1
}
*/

import XCTest

class SolutionTest: XCTestCase {
    func test0() {
        XCTAssertEqual(persistence(for: 18), 1)
    }
    func test1() {
        XCTAssertEqual(persistence(for: 28), 2)
    }
}

SolutionTest.defaultTestSuite.run()
