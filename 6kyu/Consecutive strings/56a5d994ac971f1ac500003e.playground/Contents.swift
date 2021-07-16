import Foundation

// Consecutive strings (Swift)
// https://www.codewars.com/kata/56a5d994ac971f1ac500003e/train/swift

func longestConsec(_ strarr: [String], _ k: Int) -> String {
    if strarr.isEmpty || k > strarr.count || k <= 0 { return "" }
    let str = (0...strarr.count - k).map{strarr[$0...$0+k-1].reduce("", +)}
    return str.sorted{$0.count > $1.count}.first! // OK
}

// MARK: - Solution 2 -
/*
func longestConsec(_ strarr: [String], _ k: Int) -> String {
    var index = 0, result = ""
    while index < (strarr.count - k + 1) {
        let current = strarr[index..<index + k].joined()
        if current.count > result.count { result = current }
        index += 1
    }
    return result
}
*/

// MARK: - Solution Test -

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.130 (0.131) seconds

class SolutionTest: XCTestCase {
    private func testing(_ strarr: [String], _ k: Int, _ expected: String) {
        XCTAssertEqual(longestConsec(strarr, k), expected)
    }
    
    func test() {
        testing(["zone", "abigail", "theta", "form", "libe", "zas"], 2, "abigailtheta")
        testing(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1,
                "oocccffuucccjjjkkkjyyyeehh")
        testing([], 3, "")
        testing(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2,
                "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
    }
}

SolutionTest.defaultTestSuite.run()
