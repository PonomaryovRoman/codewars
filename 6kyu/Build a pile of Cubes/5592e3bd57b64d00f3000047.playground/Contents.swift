import Foundation

// Build a pile of Cubes (Swift)
// https://www.codewars.com/kata/5592e3bd57b64d00f3000047/train/swift

func findNb(_ number: Int) -> Int {
    var n = number, x = 0
    while n > 0 { x += 1; n -= x * x * x } // 33572 times
    return n == 0 ? x : -1 // OK
}

// MARK: - Solution 2 -
/*
func findNb(_ number: Int, _ n: Int = 1) -> Int {
    let rem = number - (n*n*n)
    return rem > 0 ? findNb(rem, n + 1) : (rem == 0 ? n : -1)
}
*/

// MARK: - Solution Test -

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.595 (0.597) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(findNb(4183059834009), 2022)
        XCTAssertEqual(findNb(24723578342962), -1)
        XCTAssertEqual(findNb(135440716410000), 4824)
        XCTAssertEqual(findNb(40539911473216), 3568)
        XCTAssertEqual(findNb(26825883955641), 3218)
    }
}

SolutionTest.defaultTestSuite.run()
