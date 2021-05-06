import Foundation

// https://www.codewars.com/kata/58841cb52a077503c4000015/train/swift

func circleOfNumbers(_ n: Int, _ fst: Int) -> Int {
    return (n/2 + fst) % n
}

func circleOfNumbers2(_ n: Int, _ fst: Int) -> Int {
    return (fst + n / 2) % n
}

func circleOfNumbers3(_ n: Int, _ fst: Int) -> Int {
    return abs(n/2 > fst ? n/2 + fst : n/2 - fst)
}

// MARK: - Tests

import XCTest

//      Executed 3 tests, with 0 failures (0 unexpected) in 0.006 (0.007) seconds

class SolutionTest: XCTestCase {
    private let t1 = (10,2), e1 = 7
    private let t2 = (10,7), e2 = 2
    private let t3 = (4,1), e3 = 3
    private let t4 = (6,3), e4 = 0
    private let t5 = (20,0), e5 = 10
    
    func test() {
        XCTAssertEqual(circleOfNumbers(t1.0,t1.1), e1)
        XCTAssertEqual(circleOfNumbers(t2.0,t2.1), e2)
        XCTAssertEqual(circleOfNumbers(t3.0,t3.1), e3)
        XCTAssertEqual(circleOfNumbers(t4.0,t4.1), e4)
        XCTAssertEqual(circleOfNumbers(t5.0,t5.1), e5)
    }
    
    func test2() {
        XCTAssertEqual(circleOfNumbers2(t1.0,t1.1), e1)
        XCTAssertEqual(circleOfNumbers2(t2.0,t2.1), e2)
        XCTAssertEqual(circleOfNumbers2(t3.0,t3.1), e3)
        XCTAssertEqual(circleOfNumbers2(t4.0,t4.1), e4)
        XCTAssertEqual(circleOfNumbers2(t5.0,t5.1), e5)
    }
    
    func test3() {
        XCTAssertEqual(circleOfNumbers3(t1.0,t1.1), e1)
        XCTAssertEqual(circleOfNumbers3(t2.0,t2.1), e2)
        XCTAssertEqual(circleOfNumbers3(t3.0,t3.1), e3)
        XCTAssertEqual(circleOfNumbers3(t4.0,t4.1), e4)
        XCTAssertEqual(circleOfNumbers3(t5.0,t5.1), e5)
    }
}

SolutionTest.defaultTestSuite.run()
