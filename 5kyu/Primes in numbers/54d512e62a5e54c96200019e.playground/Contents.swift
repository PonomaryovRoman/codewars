import Foundation

// Primes in numbers
// https://www.codewars.com/kata/54d512e62a5e54c96200019e/train/swift

func factors(_ number: Int) -> String {
    var num = number, result = ""
    for k in 2...num {
        var n = 0
        while num % k == 0 {
            num /= k
            n += 1
        }
        if (n != 0) {
            result += "(" + "\(k)"
            result += n > 1 ? "**"+"\(n)":""
            result += ")"
        }
    }
    return result // OK
}
