import Foundation

// https://www.codewars.com/kata/55d24f55d7dd296eb9000030/train/swift

func summation(_ n: Int) -> Int {
    // return n * (1 + n) / 2
    return (1...n).reduce(0){ $0 + $1 }
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", basicTests),
    ]
    
    func basicTests() {
        XCTAssertEqual(summation(1), 1)
        XCTAssertEqual(summation(8), 36)
        XCTAssertEqual(summation(22), 253)
        XCTAssertEqual(summation(100), 5050)
        XCTAssertEqual(summation(213), 22791)
    }
}

SolutionTest.allTests
