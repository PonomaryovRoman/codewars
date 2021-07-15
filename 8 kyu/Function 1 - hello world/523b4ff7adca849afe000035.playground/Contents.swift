import Foundation

// Function 1 - hello world (Swift)
// https://www.codewars.com/kata/523b4ff7adca849afe000035/train/swift

func greet() -> String {
    return "hello world!" // OK
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.006 (0.008) seconds

class SolutionTest: XCTestCase {
    func testExample() {
        XCTAssertEqual(greet(),"hello world!")
    }
}

SolutionTest.defaultTestSuite.run()
