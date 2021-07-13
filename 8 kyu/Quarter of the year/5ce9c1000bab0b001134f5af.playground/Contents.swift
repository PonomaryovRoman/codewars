import Foundation

// Quarter of the year
// https://www.codewars.com/kata/5ce9c1000bab0b001134f5af/train/swift

func quarter(of month: Int) -> Int {
    return (month + 2) / 3 // OK
}

// MARK: - Solution 2 -

// func quarter(of month: Int) -> Int {
//     let months = [
//         1: [1, 2, 3],
//         2: [4, 5, 6],
//         3: [7, 8, 9],
//         4: [10, 11, 12]
//     ]
//     for (key, values) in months where values.contains(month) {
//         return key
//     }
//     return 0
// }

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.010 (0.012) seconds

class SolutionTest: XCTestCase {
    func test() {
        let testCases = [
            (3, 1),
            (8, 3),
            (11, 4),
        ]
        for testCase in testCases {
            XCTAssertEqual(quarter(of: testCase.0), testCase.1)
        }
    }
}

SolutionTest.defaultTestSuite.run()
