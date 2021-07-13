import Foundation

// Find the first non-consecutive number
// https://www.codewars.com/kata/58f8a3a27a5c28d92e000144/train/swift

func firstNonConsecutive(_ arr: [Int]) -> Int? {
    guard arr.count > 0 else { return nil }
    for i in 1..<arr.count where arr[i-1] + 1 != arr[i] { return arr[i] } // OK
    return nil
}

// MARK: - Solution: 2 -
// func firstNonConsecutive (_ arr: [Int]) -> Int? {
//     for i in 1..<arr.count where arr[i] - arr[i-1] > 1 { return arr[i] }
//     return nil
// }

// MARK: - Solution: 3 -
// func firstNonConsecutive (_ arr: [Int]) -> Int? {
//     return arr.enumerated().first{$0 > 0 ? arr[$0-1] + 1 != $1 : false}?.element
// }

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.006) seconds

class SolutionTest: XCTestCase {
    func test() {
        let first = firstNonConsecutive([1,2,3,4,6,7,8])
        XCTAssertEqual(first, 6)
    }
}

SolutionTest.defaultTestSuite.run()
