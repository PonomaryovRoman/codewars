import UIKit

// https://www.codewars.com/kata/58cb43f4256836ed95000f97/train/swift

func findDifference(_ a: [Int], _ b: [Int]) -> Int {
    return abs(a.reduce(1,*) - b.reduce(1,*))
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Fixed Tests", fixedTests),
    ]
    
    func fixedTests() {
        XCTAssertEqual(findDifference([3, 2, 5], [1, 4, 4]), 14, "\(findDifference([3, 2, 5], [1, 4, 4])) should equal 14")
        XCTAssertEqual(findDifference([9, 7, 2], [5, 2, 2]), 106, "\(findDifference([9, 7, 2], [5, 2, 2])) should equal 106")
    }
}

SolutionTest.defaultTestSuite.run()
