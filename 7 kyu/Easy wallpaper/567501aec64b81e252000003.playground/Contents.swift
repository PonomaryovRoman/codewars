import Foundation

// Easy wallpaper (Swift)
// https://www.codewars.com/kata/567501aec64b81e252000003/train/swift

func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    guard l != 0 && w != 0 && h != 0 else { return numbers[0] }
    return numbers[Int(ceil(2 * (l + w) * h / 5.2 * 1.15))]
}

// MARK: - Solution 2 -
/*
func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    return l * w * h == 0 ? "zero" : numbers[Int((l * 2 + w * 2) / 0.52 * h / 10 * 1.15) + 1]
}
*/

// MARK: - Solution 3 -
/*
func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    guard l * w * h > 0 else { return numbers[0] }
    return numbers[Int((((2 * h * (l + w)) / 0.52 / 10) * 1.15).rounded(.up))]
}
*/


// MARK: - Tests

import XCTest

// Executed 3 tests, with 0 failures (0 unexpected) in 0.006 (0.007) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(wallpaper(6.3,4.5,3.29), "sixteen")
    }
    func test1() {
        XCTAssertEqual(wallpaper(0.0,2.9,3.29), "zero")
    }
    func test4() {
        XCTAssertEqual(wallpaper(6.3,5.8,3.13), "seventeen")
    }
    func test3() {
        XCTAssertEqual(wallpaper(0.0,6.7,2.81), "zero")
    }
}

SolutionTest.defaultTestSuite.run()
