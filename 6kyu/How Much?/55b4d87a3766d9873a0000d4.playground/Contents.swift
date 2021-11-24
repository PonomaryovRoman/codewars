import Foundation

// How Much?
// https://www.codewars.com/kata/55b4d87a3766d9873a0000d4/train/swift

func howMuch(_ m: Int, _ n: Int) -> [(String, String, String)] {
    var array: [(String, String, String)] = []
    let range = min(m,n)...max(m,n)
    for a in range where ((a - 2) % 7 == 0 && (a - 1) % 9 == 0) {
        let b = (a - 2) / 7, c = (a - 1) / 9
        array.append(("M: \(a)", "B: \(b)", "C: \(c)"))
    }
    return array
}

// Solution 2:
/**
func howMuch(_ m: Int, _ n: Int) -> [(String, String, String)] {
 let value = min(m, n)...max(m, n)
 return value.filter { $0 % 9 == 1 && $0 % 7 == 2 }.map { ("M: \($0)", "B: \($0 / 7)", "C: \($0 / 9)") }
}
*/
