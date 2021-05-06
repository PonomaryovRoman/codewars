import Foundation

// https://www.codewars.com/kata/5f0ed36164f2bc00283aed07/train/swift

func overTheRoad(address: Int, street: Int) -> Int {
    return street * 2 + 1 - address
}

// MARK: - Tests

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.211 (0.213) seconds
final class SolutionTest: XCTestCase {
    func test() {
        let expectedValues = [6, 4, 5, 8, 16]
        let inputsToBeTested = [(1, 3), (3, 3), (2, 3), (3, 5), (7, 11)]
        for (inputs, expectedValue) in zip(inputsToBeTested, expectedValues) {
            let result = overTheRoad(address: inputs.0, street: inputs.1)
            XCTAssertEqual(result, expectedValue, "Testing for address = \(inputs.0) and street = \(inputs.1) failed! Expected \(expectedValue) but got \(result)")
        }
    }
}

SolutionTest.defaultTestSuite.run()
