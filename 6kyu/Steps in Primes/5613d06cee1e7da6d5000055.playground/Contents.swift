import Foundation

// Steps in Primes
// https://www.codewars.com/kata/5613d06cee1e7da6d5000055/train/swift

func step(_ g: Int, _ m: Int, _ n: Int) -> (Int, Int)? {
    func isPrime(_ num: Int) -> Bool {
        for i in 2...Int(sqrt(Double(num))) where num > 1 {
            if (num % i == 0) { return false }
        }
        return true
    }
    var primes: [Int] = []
    for i in m...n where isPrime(i) {
        for p in primes where i - p == g {
            return (p, i)
        }
        primes.append(i)
    }
    return nil
}
