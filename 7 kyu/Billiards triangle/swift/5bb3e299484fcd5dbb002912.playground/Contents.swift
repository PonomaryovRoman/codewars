import Foundation

// https://www.codewars.com/kata/5bb3e299484fcd5dbb002912/train/swift

func pyramid(_ balls: Int) -> Int {
    var b = balls, n = 0
    while b > 0 {
        n += 1
        b = b - n
    }
    return b == 0 ? n : n - 1
}

// Don't forget to remove the number!
func pyramid2(_ balls: Int) -> Int {
    return (Int(sqrt(1.0 + 8.0 * Double(balls))) - 1) / 2
}

// Don't forget to remove the number!
func pyramid3(_ balls: Int) -> Int{
    var c = 0, b = balls
    repeat {
        c += 1
        b -= c
    } while b >= 0
    return c - 1
}


// MARK: - Tests

import XCTest

// Executed 3 tests, with 0 failures (0 unexpected) in 0.708 (0.709) seconds
class SolutionTest: XCTestCase {
    private let b1 = 1, t1 = 1
    private let b2 = 4, t2 = 2
    private let b3 = 20, t3 = 5
    private let b4 = 100, t4 = 13
    private let b5 = 9999, t5 = 140
    
    func test() {
        XCTAssertEqual(pyramid(b1), t1)
        XCTAssertEqual(pyramid(b2), t2)
        XCTAssertEqual(pyramid(b3), t3)
        XCTAssertEqual(pyramid(b4), t4)
        XCTAssertEqual(pyramid(b5), t5)
    }
    
    func test2() {
        XCTAssertEqual(pyramid2(b1), t1)
        XCTAssertEqual(pyramid2(b2), t2)
        XCTAssertEqual(pyramid2(b3), t3)
        XCTAssertEqual(pyramid2(b4), t4)
        XCTAssertEqual(pyramid2(b5), t5)
    }
    
    func test3() {
        XCTAssertEqual(pyramid3(b1), t1)
        XCTAssertEqual(pyramid3(b2), t2)
        XCTAssertEqual(pyramid3(b3), t3)
        XCTAssertEqual(pyramid3(b4), t4)
        XCTAssertEqual(pyramid3(b5), t5)
    }
}

SolutionTest.defaultTestSuite.run()
