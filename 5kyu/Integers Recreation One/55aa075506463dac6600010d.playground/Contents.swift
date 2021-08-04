import Foundation

// Integers: Recreation One
// https://www.codewars.com/kata/55aa075506463dac6600010d/train/swift

func listSquared(_ m: Int, _ n: Int) -> [(Int, Int)] {
    return (m...n).compactMap { (val) -> (Int,Int)? in
        let divisors = (1...(Int(sqrt(Double(val))))).flatMap({val % $0 == 0 ? [$0, val / $0] : []})
        let sum = Array(Set(divisors)).reduce(0, {$0 + ($1 * $1)})
        if sqrt(Double(sum)).truncatingRemainder(dividingBy: 1) == 0 { return (val, sum) }
        return nil // OK
    }
}
