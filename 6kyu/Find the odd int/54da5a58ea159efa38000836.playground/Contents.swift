import Foundation

// Find the odd int (Swift)
// https://www.codewars.com/kata/54da5a58ea159efa38000836/train/swift

func findIt(_ seq: [Int]) -> Int {
    return seq.reduce(0, ^) // <3
}

// MARK: - Solution 2 -
/*
func findIt(_ seq: [Int]) -> Int {
    return seq.reduce(0, {$0^$1})
}
*/

// MARK: - Solution 3 -
/*
func findIt(_ seq: [Int]) -> Int {
    var h: [Int:Int] = [:]
    seq.forEach {
        h[$0] = (h[$0] == nil) ? 1 : h[$0]! + 1
    }
    for k in h.keys {
        if (h[k]! % 2 == 1) { return k }
    }
    return 0
}
*/

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.008 (0.010) seconds

class SolutionTest: XCTestCase {
    func test() {
        let testCases = [
            ([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5], 5),
            ([1,1,2,-2,5,2,4,4,-1,-2,5], -1),
            ([20,1,1,2,2,3,3,5,5,4,20,4,5], 5),
            ([10], 10),
            ([1,1,1,1,1,1,10,1,1,1,1], 10),
        ]
        for testCase in testCases {
            let actual = findIt(testCase.0);
            let expected = testCase.1;
            XCTAssertEqual(actual, expected, "\nInvalid answer for input array: \(testCase.0)\nExpected: \(expected)\nActual: \(actual)")
        }
    }
}

SolutionTest.defaultTestSuite.run()
