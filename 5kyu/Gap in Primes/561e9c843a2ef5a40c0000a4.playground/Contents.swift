import Foundation

// Gap in Primes
// https://www.codewars.com/kata/561e9c843a2ef5a40c0000a4/train/swift

func gap(_ g: Int, _ m: Int, _ n: Int) -> (Int, Int)? {
    var prev: Int?
    for num in m...n {
        if num == 2 && g == 1 { return (2, 3) }
        if num == 3 { prev = num; continue }
        guard !(2...Int(sqrt(Double(num)))).contains(where: { num % $0 == 0 }) else { continue }
        if let prev = prev, num - prev == g { return (prev, num) }
        prev = num
    } // OK
    return nil
}
