import Foundation

// https://www.codewars.com/kata/566fc12495810954b1000030/train/swift

func nbDig(_ n: Int, _ d: Int) -> Int {
    return (0...n).map{ String($0 * $0).filter{ $0 == Character("\(d)") }}.flatMap{$0}.count
}

// Don't forget to remove the number!
func nbDig2(_ n: Int, _ d: Int) -> Int {
    return (0...n).map{"\($0 * $0)".filter { $0 == Character("\(d)")}}.flatMap { $0 }.count
}

// Don't forget to remove the number!
func nbDig3(_ n: Int, _ d: Int) -> Int {
    return (0...n).map{String($0*$0)}.joined().filter{"\($0)" == "\(d)"}.count
}


// MARK: - Tests

import XCTest

class SolutionTest: XCTestCase {
    private let q1 = (5750, 0), exp1 = 4700
    private let q2 = (11011, 2), exp2 = 9481
    private let q3 = (12224, 8), exp3 = 7733
    private let q4 = (11549, 1), exp4 = 11905
    
    func test() {
        XCTAssertEqual(nbDig(q1.0, q1.1), exp1)
        XCTAssertEqual(nbDig(q2.0, q2.1), exp2)
        XCTAssertEqual(nbDig(q3.0, q3.1), exp3)
        XCTAssertEqual(nbDig(q4.0, q4.1), exp4)
    }
    
    func test2() {
        XCTAssertEqual(nbDig2(q1.0, q1.1), exp1)
        XCTAssertEqual(nbDig2(q2.0, q2.1), exp2)
        XCTAssertEqual(nbDig2(q3.0, q3.1), exp3)
        XCTAssertEqual(nbDig2(q4.0, q4.1), exp4)
    }
    
    func test3() {
        XCTAssertEqual(nbDig3(q1.0, q1.1), exp1)
        XCTAssertEqual(nbDig3(q2.0, q2.1), exp2)
        XCTAssertEqual(nbDig3(q3.0, q3.1), exp3)
        XCTAssertEqual(nbDig3(q4.0, q4.1), exp4)
    }
}

SolutionTest.defaultTestSuite.run()
