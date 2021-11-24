import Foundation

// Which are in?
// https://www.codewars.com/kata/550554fd08b86f84fe000a58/train/swift

func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    return Set(a1.filter { w1 in a2.contains { $0.contains(w1) }}).sorted()
}

// Solution 2:
/*
func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    var result: [String] = []
    a1.forEach({ w1 in
        a2.forEach { w2 in
            if w2.contains(w1), !result.contains(w1) {
                result.append(w1)
            }
        }
    })
    return result.sorted()
}
*/
