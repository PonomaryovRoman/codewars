import Foundation

// A wolf in sheep's clothing
// https://www.codewars.com/kata/5c8bfa44b9d1192e1ebd3d15/train/swift

func warnTheSheep(_ queue: [String]) -> String {
    let reversed = queue.reduce([],{ [$1] + $0 })
    guard reversed.first != "wolf" else { return "Pls go away and stop eating my sheep" }
    var n: Int = .zero
    for (i,str) in reversed.enumerated() {
        if str == "wolf" { return "Oi! Sheep number \(n)! You are about to be eaten by a wolf!" }
        n = i + 1
    }
    fatalError() // :)
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
    let i = queue.count - queue.firstIndex(of: "wolf")! - 1
    return i == 0
    ? "Pls go away and stop eating my sheep"
    : "Oi! Sheep number \(i)! You are about to be eaten by a wolf!"
}
*/
