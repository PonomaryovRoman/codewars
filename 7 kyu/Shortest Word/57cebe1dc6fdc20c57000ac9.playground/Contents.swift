import Foundation

// Shortest Word
// https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9/train/swift

func find_short(_ str: String) -> Int { // OK
    return str.split(separator: " ").sorted{ $0.count < $1.count }[0].count
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.006 (0.008) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(3, find_short("bitcoin take over the world maybe who knows perhaps"))
        XCTAssertEqual(3, find_short("lets talk about javascript the best language"))
        XCTAssertEqual(1, find_short("i want to travel the world writing code one day"))
        XCTAssertEqual(2, find_short("Lets all go on holiday somewhere very cold"))
        XCTAssertEqual(2, find_short("Let's travel abroad shall we"))
    }
}

SolutionTest.defaultTestSuite.run()
