import Foundation

// https://www.codewars.com/kata/57a429e253ba3381850000fb/train/swift

func bmi(_ weight: Int, _ height: Double) -> String {
    let bmi = Double(weight)/pow(height, 2)
    return bmi <= 18.5 ? "Underweight" : (bmi <= 25.0 ? "Normal" : (bmi <= 30.0 ? "Overweight" : "Obese"))
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", basicTests),
    ]
    
    func basicTests() {
        XCTAssertEqual("Underweight", bmi(50, 1.80))
        XCTAssertEqual("Normal", bmi(80, 1.80))
        XCTAssertEqual("Overweight", bmi(90, 1.80))
        XCTAssertEqual("Obese", bmi(110, 1.80))
        XCTAssertEqual("Normal", bmi(50, 1.50))
    }
    
}

SolutionTest.defaultTestSuite.run()
