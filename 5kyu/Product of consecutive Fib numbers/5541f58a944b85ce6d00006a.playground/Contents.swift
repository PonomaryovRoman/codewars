import Foundation

// Product of consecutive Fib numbers
// https://www.codewars.com/kata/5541f58a944b85ce6d00006a/train/swift

func productFib(_ prod : UInt64) -> (UInt64,UInt64,Bool) {
    var a: UInt64 = 0, b: UInt64 = 1
    while a * b < prod { (a, b) = (b, a+b) }
    return (a, b, a * b == prod) // OK
}

// Solution 2:
/*
func productFib(_ prod : UInt64) -> (UInt64,UInt64,Bool) {
    var f1: UInt64 = 0, f2: UInt64 = 1
    while f1 * f2 < prod {
        let sum = f1 + f2
        f1 = f2
        f2 = sum
    }
    return (f1, f2, prod == f1 * f2)
}
*/
