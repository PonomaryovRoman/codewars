import Foundation

// Sum of Digits / Digital Root (Swift)
// https://www.codewars.com/kata/541c8630095125aba6000c00/train/swift

func digitalRoot(of number: Int) -> Int {
    return (number - 1) % 9 + 1 // success
}

// MARK: - Solution 2 -
/*
func digitalRoot(of number: Int) -> Int {
    return (1 + (number - 1) % 9)
}
*/

// MARK: - Solution 3 -
/*
func digitalRoot(of number: Int) -> Int {
    let d = "\(number)".compactMap{ Int("\($0)")}.reduce(0,+)
    return d > 9 ? digitalRoot(of: d) : d
}
*/

import XCTest

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(digitalRoot(of: 16), 7);
        XCTAssertEqual(digitalRoot(of: 456), 6);
    }
}

SolutionTest.defaultTestSuite.run()
