import Foundation

// https://www.codewars.com/kata/5933a1f8552bc2750a0000ed/train/swift

func nthEven(_ n: Int) -> Int {
    return 2 * n - 2
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasics),
    ]
    
    func testBasics() {
        XCTAssertEqual(nthEven(1), 0)
        XCTAssertEqual(nthEven(2), 2)
        XCTAssertEqual(nthEven(3), 4)
        XCTAssertEqual(nthEven(100), 198)
        XCTAssertEqual(nthEven(1298734), 2597466)
        
    }
}

SolutionTest.defaultTestSuite.run()
