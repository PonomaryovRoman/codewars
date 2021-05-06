import Foundation

// https://www.codewars.com/kata/556deca17c58da83c00002db/train/swift

func tribonacci(_ signature: [Int], _ n: Int) -> [Int] {
    guard n > 0 else { return [] }
    if n <= signature.count { return Array(signature[0..<n]) }
    var newnum = 0
    for i in (signature.count - 3..<signature.count) {
        newnum += signature[i]
    }
    return tribonacci(signature + [newnum],n)
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.525 (0.692) seconds
class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(tribonacci([1,1,1], 10), [1,1,1,3,5,9,17,31,57,105])
        XCTAssertEqual(tribonacci([0,0,1], 10), [0,0,1,1,2,4,7,13,24,44])
        XCTAssertEqual(tribonacci([0,1,1], 10), [0, 1, 1, 2, 4, 7, 13, 24, 44, 81])
        XCTAssertEqual(tribonacci([1,0,0], 10), [1, 0, 0, 1, 1, 2, 4, 7, 13, 24])
        XCTAssertEqual(tribonacci([0,0,0], 10), [0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        XCTAssertEqual(tribonacci([1,2,3], 10), [1, 2, 3, 6, 11, 20, 37, 68, 125, 230])
        XCTAssertEqual(tribonacci([3,2,1], 10), [3, 2, 1, 6, 9, 16, 31, 56, 103, 190])
        XCTAssertEqual(tribonacci([1,1,1], 1), [1])
        XCTAssertEqual(tribonacci([300,200,100], 0), [])
    }
}

SolutionTest.defaultTestSuite.run()
