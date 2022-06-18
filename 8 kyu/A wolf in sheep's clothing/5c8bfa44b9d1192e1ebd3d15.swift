import Foundation

// A wolf in sheep's clothing
// https://www.codewars.com/kata/5c8bfa44b9d1192e1ebd3d15/train/swift

func warnTheSheep(_ queue: [String]) -> String {
    let num = queue.count - queue.firstIndex(of: "wolf")! - 1
    return num == 0
    ? "Pls go away and stop eating my sheep"
    : "Oi! Sheep number \(num)! You are about to be eaten by a wolf!"
}

// MARK: - Solution 2 -

/*
func warnTheSheep(_ queue: [String]) -> String {
    let i: Int = Array(queue.reversed()).firstIndex(where: { $0 == "wolf" })!
    return i == 0 ? "Pls go away and stop eating my sheep" : "Oi! Sheep number \(i)! You are about to be eaten by a wolf!"
}
*/
 
// MARK: - Solution 3 -

/*
func warnTheSheep(_ queue: [String]) -> String {
    let reversed = queue.reduce([],{ [$1] + $0 })
    guard reversed.first != "wolf" else { return "Pls go away and stop eating my sheep" }
    var num = 0
    for (i,s) in reversed.enumerated() {
        if s == "wolf" { return "Oi! Sheep number \(num)! You are about to be eaten by a wolf!" }
        num = i + 1
    }
    return ""
}
*/
