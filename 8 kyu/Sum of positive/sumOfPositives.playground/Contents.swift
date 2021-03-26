import Foundation

// https://www.codewars.com/kata/5715eaedb436cf5606000381/train/swift

func sumOfPositives (_ numbers: [Int] ) -> Int {
    // Your code here
    return numbers.filter{ $0 > 0 }.reduce(0, +)
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]
    
    func testExample() {
        XCTAssertEqual(sumOfPositives([1,2,3,4,5]), 15);
        XCTAssertEqual(sumOfPositives([1,-2,3,4,5]), 13);
        XCTAssertEqual(sumOfPositives([-1,2,3,4,-5]), 9);
    }
}

SolutionTest.defaultTestSuite.run()
