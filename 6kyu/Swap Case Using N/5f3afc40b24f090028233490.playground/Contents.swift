import Foundation

// Swap Case Using N
// https://www.codewars.com/kata/5f3afc40b24f090028233490/train/swift

func swap(_ s: String,_  n: Int) -> String {
    let b = String(n, radix: 2)
    var brpt = String(repeating: b, count: (s.count / b.count) + 1).makeIterator()
    return s.map { c in
        guard c.isLetter, brpt.next()! == "1" else { return "\(c)" }
        return c.isUppercase ? c.lowercased() : c.uppercased()
    }.reduce("", +)
}
